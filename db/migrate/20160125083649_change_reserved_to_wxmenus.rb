class ChangeReservedToWxmenus < ActiveRecord::Migration
  def change
  	change_column :wx_menus,:reserved1,:int
  	change_column :wx_menus,:reserved2,:int
  	change_column :wx_menus,:reserved3,:string,limit:40
  	change_column :wx_menus,:reserved4,:string,limit:40
  	change_column :wx_menus,:reserved5,:string,limit:40
  	change_column :wx_menus,:reserved6,:string,limit:40
  	change_column :wx_menus,:reserved7,:string,limit:80
  	change_column :wx_menus,:reserved8,:string,limit:80
  	change_column :wx_menus,:reserved9,:string,limit:255
  	change_column :wx_menus,:reserved10,:string,limit:255
  end
end
