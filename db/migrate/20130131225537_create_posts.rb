class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :dropbox_location
      t.string :poster

      t.timestamps
    end
  end
end
