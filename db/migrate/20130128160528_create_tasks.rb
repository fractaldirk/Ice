class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :by_whom
      t.integer :status
      t.string :dropbox_location

      t.timestamps
    end
  end
end
