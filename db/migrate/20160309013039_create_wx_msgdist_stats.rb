class CreateWxMsgdistStats < ActiveRecord::Migration
  def change
    create_table :wx_msgdist_stats do |t|
      t.integer :wx_official_account_id
      t.integer :cycle
      t.date :date
      t.integer :source
      t.integer :count_interval
      t.integer :user
    end
  end
end
