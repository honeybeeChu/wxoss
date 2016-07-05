class ChangeAeskeyFromOfficialAccounts < ActiveRecord::Migration
  def change
    rename_column :wx_official_accounts, :aes_key, :encoding_aes_key
  end
end
