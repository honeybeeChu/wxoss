class AddProvinceCodeToWxProvinces < ActiveRecord::Migration
  def change
    add_column :wx_provinces, :province_code,:integer
  end
end
