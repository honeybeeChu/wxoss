class CreateMMenuTrees < ActiveRecord::Migration
  def change
    create_table :m_menu_trees do |t|
      t.string :nodeid
      t.integer :systemid
      t.integer :nodetype
      t.string :parentnodeid
      t.string :label
      t.string :info
      t.text :description

      t.timestamps null: false
    end
  end
end
