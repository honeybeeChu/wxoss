class CreateMMenuFunctions < ActiveRecord::Migration
  def change
    create_table :m_menu_functions do |t|
      t.string :funcid
      t.integer :systemid
      t.string :nodeid
      t.string :layout
      t.string :bstyle
      t.text :description

      t.timestamps null: false
    end
  end
end
