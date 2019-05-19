class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.text :name
      t.integer :empid
      t.integer :phonumber
      t.text :gender
      t.date :joining_date

      t.timestamps
    end
  end
end
