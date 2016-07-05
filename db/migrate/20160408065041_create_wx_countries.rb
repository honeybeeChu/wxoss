class CreateWxCountries < ActiveRecord::Migration
  def change
    create_table :wx_countries do |t|
      t.string :country_name
    end
  end
end
