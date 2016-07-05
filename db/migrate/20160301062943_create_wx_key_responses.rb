class CreateWxKeyResponses < ActiveRecord::Migration
  def change
    create_table :wx_key_responses do |t|

      t.integer :wx_official_account_id
      t.string :original_id
      t.string :rule_name
      t.boolean :is_response_all
      t.integer :resource_size
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
