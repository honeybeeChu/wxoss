class CreateWxUserStats < ActiveRecord::Migration
  def change
    create_table :wx_user_stats do |t|
      t.integer :wx_official_account_id
      t.date :date
      t.integer :user_source
      t.integer :new_user
      t.integer :cancel_user
      t.integer :cumulate_user

      t.timestamps null: false
    end
  end
end
