class AddSizeToProducts < ActiveRecord::Migration
  def self.up
    add_column(products, size, :string)
  end

  def self.down
    remove_column :products, :size, :string
  end
end
