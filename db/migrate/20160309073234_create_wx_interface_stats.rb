class CreateWxInterfaceStats < ActiveRecord::Migration
  def change
    create_table :wx_interface_stats do |t|
      t.integer :wx_official_account_id
      t.date :date
      t.integer :callback_count
      t.integer :fail_count
      t.integer :total_time_cost
      t.integer :max_time_cost
    end
  end
end
