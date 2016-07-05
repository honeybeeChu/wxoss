class CreateMFunctionUrlFilters < ActiveRecord::Migration
  def change
    create_table :m_function_url_filters do |t|
      t.string :funcid
      t.integer :systemid
      t.integer :matchtype
      t.text :urlpattern
      t.string :matchresult
      t.integer :priority
      t.text :description

      t.timestamps null: false
    end
  end
end
