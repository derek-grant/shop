class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index,:show,:edit, :update, :destroy]

  def new
    @user = User.new
  end
  def index
    @users = User.find(:all)
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to products_path, :notice => 'User creation successful!'
    else
      render :action => 'new'
    end
  end
end
