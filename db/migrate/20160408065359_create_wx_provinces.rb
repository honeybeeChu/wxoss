class CreateWxProvinces < ActiveRecord::Migration
  def change
    create_table :wx_provinces do |t|
      t.integer :wx_country_id
      t.string :province_name
    end
  end
end
