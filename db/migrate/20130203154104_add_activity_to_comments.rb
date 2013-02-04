class AddActivityToComments < ActiveRecord::Migration
  def change
    add_column :comments, :description, :string
    add_column :comments, :post_name, :string
  end
end
