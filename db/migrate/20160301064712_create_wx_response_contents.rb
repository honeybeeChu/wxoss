class CreateWxResponseContents < ActiveRecord::Migration
  def change
    create_table :wx_response_contents do |t|
      t.integer :wx_key_response_id
      t.string :text_content
      t.string :media_content
      t.integer :content_type
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
