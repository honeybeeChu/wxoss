class ChangeAppidandAppsecretFromOfficialAccounts < ActiveRecord::Migration
  def change
    rename_column :wx_official_accounts, :appid, :app_id
    rename_column :wx_official_accounts, :appsecret, :app_secret
  end
end
