class CreateWxMEnterpriseclients < ActiveRecord::Migration
  def change
    create_table :wx_m_enterpriseclients do |t|
      t.string :eccode,limit:40
      t.string :ssid,limit:20
      t.string :ecname,limit:64
      t.string :linkman,limit:64
      t.string :linkmantel,limit:64

      t.integer :status 
      t.string :userattr,limit:500
      t.string :timeseg,limit:200
      t.integer :dailyuse
      t.integer :zoneflag
      t.integer :uservalidity
      t.integer :teppwdvalidity
      t.integer :openflag
      t.datetime :opendate
      t.string :openoperator,limit:40
      t.datetime :moddate
      t.string :modoperator,limit:40
      t.string :logopath,limit:80

      t.integer :reserved1
      t.integer :reserved2
      t.string :reserved3,limit:40
      t.string :reserved4,limit:40
      t.string :reserved5,limit:40
      t.string :reserved6,limit:40
      t.string :reserved7,limit:80
      t.string :reserved8,limit:80
      t.string :reserved9,limit:255
      t.string :reserved10  ,limit:255

      t.timestamps null: false
    end
  end
end
