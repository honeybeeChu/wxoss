class CreateWxBatchSendMessages < ActiveRecord::Migration
  def change
    create_table :wx_batch_send_messages do |t|

      t.integer :msg_type
      t.string :msg_content
      t.integer :wx_user_group_id
      t.integer :gender
      t.integer :wx_country_id
      t.integer :wx_province_id
      t.integer :wx_city_id

      t.references :wx_official_account

      t.date null: false
      t.datetime null: false
    end
  end
end
