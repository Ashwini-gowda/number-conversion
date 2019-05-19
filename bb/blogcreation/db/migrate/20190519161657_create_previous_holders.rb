class CreatePreviousHolders < ActiveRecord::Migration[5.1]
  def change
    create_table :previous_holders do |t|
      t.integer :empid
      t.date :from_previous_holder_date
      t.date :to_current_holder_date
      t.text :name

      t.timestamps
    end
  end
end
