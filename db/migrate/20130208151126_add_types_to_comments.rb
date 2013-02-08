class AddTypesToComments < ActiveRecord::Migration
  def change
    add_column :comments, :sort, :integer
  end
end
