class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.text :description
      t.integer :type
      t.string :company
      t.integer :payment_type
      t.date :date_payment
      t.decimal :amount
      t.boolean :ongoing

      t.timestamps
    end
  end
end
