class CreateWxMsgStats < ActiveRecord::Migration
  def change
    create_table :wx_msg_stats do |t|
      t.integer :wx_official_account_id
      t.integer :cycle
      t.date :date
      t.integer :source
      t.integer :msg_type
      t.integer :user
      t.integer :count
    end
  end
end
