class ChangeAeskeyNameFromWxOfficailAccounts < ActiveRecord::Migration
  def change
    rename_column :wx_official_accounts, :aeskey, :aes_key
  end
end
