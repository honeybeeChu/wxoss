class CreateWxMsgStatHours < ActiveRecord::Migration
  def change
    create_table :wx_msg_stat_hours do |t|
      t.integer :wx_official_account_id
      t.date :date
      t.string :hour
      t.integer :source
      t.integer :msg_type
      t.integer :user
      t.integer :count
    end
  end
end
