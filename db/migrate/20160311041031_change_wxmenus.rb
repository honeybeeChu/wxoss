class ChangeWxmenus < ActiveRecord::Migration
  def change
    rename_column :wx_menus, :father_id, :parent_id
    rename_column :wx_menus, :title, :name
    rename_column :wx_menus, :order, :sort
    add_column :wx_menus, :is_show, :boolean
    add_column :wx_menus, :key, :string
    add_column :wx_menus, :url, :string
    add_column :wx_menus, :msg_type, :integer
    add_column :wx_menus, :msg_content, :string
    remove_column :wx_menus, :menu_type
    remove_column :wx_menus, :operate_content

  end
end
