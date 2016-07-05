class ChangeProvinceandCityCode < ActiveRecord::Migration
  def change
    add_column :wx_cities, :city_code,:integer
    remove_column :wx_provinces, :city_code
  end
end
