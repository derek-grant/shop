class WelcomeController < ApplicationController
  def home
  end

  def thank_you
  end

  def register
    @user = User.new
  end
end
