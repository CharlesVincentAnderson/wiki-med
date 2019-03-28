class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.string :name
      t.string :description
      t.integer :bill_id
      t.timestamps null: false
    end
  end
end
