class CreateWxInterfaceStatHours < ActiveRecord::Migration
  def change
    create_table :wx_interface_stat_hours do |t|
      t.integer :wx_official_account_id
      t.date :date
      t.string :hour
      t.integer :callback_count
      t.integer :fail_count
      t.integer :total_time_cost
      t.integer :max_time_cost
    end
  end
end
