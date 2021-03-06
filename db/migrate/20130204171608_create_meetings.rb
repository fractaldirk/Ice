class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :content
      t.string :agenda
      t.string :attendents
      t.string :place
      t.datetime :meeting_date

      t.timestamps
    end
  end
end
