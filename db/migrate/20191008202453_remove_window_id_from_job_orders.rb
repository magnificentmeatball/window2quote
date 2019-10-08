class RemoveWindowIdFromJobOrders < ActiveRecord::Migration[6.0]
  def change
    remove_index :job_orders, :window_id

    remove_column :job_orders, :window_id, :string

    remove_column :job_orders, :window_id, :integer
  end
end
