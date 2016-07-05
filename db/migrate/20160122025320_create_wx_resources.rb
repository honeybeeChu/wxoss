class CreateWxResources < ActiveRecord::Migration
  def change
    create_table :wx_resources do |t|
      t.integer :wx_official_account_id
      t.string :original_id
      t.string :resource_name
      t.string :file_url
      t.string :media_id
      t.string :wx_url
      t.integer :resource_type
      t.integer :wx_resource_group_id
      t.string :column
      t.string :fomat
      t.integer :resource_size
      t.boolean :deleted, :default => 0
      t.string :reserved1
      t.string :reserved2
      t.string :reserved3
      t.string :reserved4
      t.string :reserved5
      t.string :reserved6
      t.string :reserved7
      t.string :reserved8
      t.string :reserved9
      t.string :reserved10

      t.timestamps null: false
    end
  end
end
