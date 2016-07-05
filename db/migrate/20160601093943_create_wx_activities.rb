class CreateWxActivities < ActiveRecord::Migration
  def change
    create_table :wx_activities do |t|
      t.integer :activity_type
      t.string :name
      t.integer :status
      t.datetime :begintime
      t.datetime :endtime
      t.string :description
      t.string :qrcode_url
      t.integer :maxcount
      t.integer :lottery_num
      t.boolean :is_repeat_draw
      t.integer :receive_way
      t.string :receive_info
      t.string :offline_address
      t.string :offline_description
      t.references :wx_official_account

      t.integer :reserved1
      t.integer :reserved2
      t.string :reserved3,limit:40
      t.string :reserved4,limit:40
      t.string :reserved5,limit:40
      t.string :reserved6,limit:40
      t.string :reserved7,limit:80
      t.string :reserved8,limit:80
      t.string :reserved9,limit:255
      t.string :reserved10,limit:255

      t.timestamps null: false
    end
  end
end
