class AddCountryCodeToWxCountries < ActiveRecord::Migration
  def change
    add_column :wx_countries, :country_code,:integer
  end
end
