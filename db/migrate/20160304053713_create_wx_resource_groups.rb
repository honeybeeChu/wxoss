class CreateWxResourceGroups < ActiveRecord::Migration
  def change
    create_table :wx_resource_groups do |t|
      t.string :name
      t.integer :wx_official_account_id
    end
  end
end
