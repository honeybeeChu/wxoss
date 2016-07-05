class ModifyParentIdFromWxMenus < ActiveRecord::Migration
  def change
    change_column :wx_menus,:parent_id,:string
  end
end
