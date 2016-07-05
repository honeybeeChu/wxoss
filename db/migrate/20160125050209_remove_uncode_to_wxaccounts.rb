class RemoveUncodeToWxaccounts < ActiveRecord::Migration
  def change
  	remove_column :wx_official_accounts, :uncode
  	add_column :wx_official_accounts, :reserved1 ,:int 
  	add_column :wx_official_accounts, :reserved2 ,:int 
  	add_column :wx_official_accounts, :reserved3 ,:string, limit:40
  	add_column :wx_official_accounts, :reserved4 ,:string, limit:40
  	add_column :wx_official_accounts, :reserved5 ,:string, limit:40
  	add_column :wx_official_accounts, :reserved6 ,:string, limit:40
  	add_column :wx_official_accounts, :reserved7 ,:string, limit:80
  	add_column :wx_official_accounts, :reserved8 ,:string, limit:80
  	add_column :wx_official_accounts, :reserved9 ,:string, limit:255
  	add_column :wx_official_accounts, :reserved10 ,:string, limit:255

  end
end
