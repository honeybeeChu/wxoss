class AddCityCodeToWxCities < ActiveRecord::Migration
  def change
    add_column :wx_provinces, :city_code,:integer
  end
end
