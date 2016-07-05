class CreateWxAutoResponses < ActiveRecord::Migration
  def change
    create_table :wx_auto_responses do |t|
    	t.integer :wx_official_account_id
      	t.string :original_id	
    	t.string :rule_name
    	t.string :keys
    	t.integer :res_type
    	t.string :res_content

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
