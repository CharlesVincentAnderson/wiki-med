class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.date           :date
      t.float          :Price
      t.integer        :facility_id, foreign_key: true
      t.integer        :procedure_id, foreign_key: true
      t.string         :status, :default => 'pending'
      t.timestamps
    end
  end
end
