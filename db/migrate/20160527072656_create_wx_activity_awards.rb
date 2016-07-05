class CreateWxActivityAwards < ActiveRecord::Migration
  def change
    create_table :wx_activity_awards do |t|
      t.references :wx_activity
      t.integer :level
      t.string :name
      t.string :imgurl
      t.integer :amount
      t.integer :probability

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
