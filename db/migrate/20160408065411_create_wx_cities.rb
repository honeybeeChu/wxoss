class CreateWxCities < ActiveRecord::Migration
  def change
    create_table :wx_cities do |t|
      t.integer :wx_country_id
      t.integer :wx_province_id
      t.string :city_name
    end
  end
end