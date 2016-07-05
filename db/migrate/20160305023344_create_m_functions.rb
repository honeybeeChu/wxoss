class CreateMFunctions < ActiveRecord::Migration
  def change
    create_table :m_functions do |t|
      t.string :funcid
      t.integer :systemid
      t.string :name
      t.integer :optype
      t.text :indexurl
      t.text :groupnolist
      t.text :securitylevellist
      t.text :description

      t.timestamps null: false
    end
  end
end
