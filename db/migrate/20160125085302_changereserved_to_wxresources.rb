class ChangereservedToWxresources < ActiveRecord::Migration
  def change
  	change_column :wx_resources,:reserved1,:int
  	change_column :wx_resources,:reserved2,:int
  	change_column :wx_resources,:reserved3,:string,limit:40
  	change_column :wx_resources,:reserved4,:string,limit:40
  	change_column :wx_resources,:reserved5,:string,limit:40
  	change_column :wx_resources,:reserved6,:string,limit:40
  	change_column :wx_resources,:reserved7,:string,limit:80
  	change_column :wx_resources,:reserved8,:string,limit:80
  	change_column :wx_resources,:reserved9,:string,limit:255
  	change_column :wx_resources,:reserved10,:string,limit:255
  end
end
