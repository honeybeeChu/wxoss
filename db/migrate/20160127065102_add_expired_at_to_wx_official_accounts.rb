class AddExpiredAtToWxOfficialAccounts < ActiveRecord::Migration
  def change
    add_column :wx_official_accounts, :expired_at, :datetime
  end
end
