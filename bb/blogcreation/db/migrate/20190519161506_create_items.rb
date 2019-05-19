class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :itemname
      t.text :brand
      t.date :purchase_date
      t.integer :previous_holder_id
      t.integer :current_holder_id
      t.date :service_date

      t.timestamps
    end
  end
end
