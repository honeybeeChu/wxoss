class CreateWxOfficialAccounts < ActiveRecord::Migration
  def change
    create_table :wx_official_accounts do |t|
      t.string :original_id
      t.string :wechat_name
      t.string :wechat_account
      t.integer :wechat_type
      t.string :appid
      t.string :appsecret
      t.string :uncode
      t.string :token
      t.string :aeskey
      t.integer :accesstype
      t.integer :resource_flag
    end
  end
end
