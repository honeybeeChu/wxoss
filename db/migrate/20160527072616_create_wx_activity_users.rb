class CreateWxActivityUsers < ActiveRecord::Migration
  def change
    create_table :wx_activity_users do |t|
      t.references :wx_activity
      t.string :openid
      t.integer :award_level
      t.integer :shake_count
      t.string :realname
      t.string :telephone
      t.string :address

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
