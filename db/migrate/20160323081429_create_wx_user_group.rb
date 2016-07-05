class CreateWxUserGroup < ActiveRecord::Migration
  def change
    create_table :wx_user_groups do |t|
      t.string :name, limit: 12
      t.integer :count, default: 0

      t.references :wx_official_account

      t.datetime :create_time, null: false
    end

    execute "ALTER TABLE WX_USER_GROUPS CHANGE id groupid int(11);"
    execute "ALTER TABLE WX_USER_GROUPS DROP PRIMARY KEY;"
    execute "ALTER TABLE WX_USER_GROUPS ADD PRIMARY KEY (id,wx_official_account_id);"
  end
end
