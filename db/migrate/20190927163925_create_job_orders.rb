class CreateJobOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :job_orders do |t|
      t.integer :jobId
      t.string :jobsite
      t.decimal :price
      t.string :customerCell
      t.text :note
      t.date :contractDate
      t.references :window, null: false, foreign_key: true

      t.timestamps
    end
  end
end
