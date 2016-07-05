class CreateWxArticles < ActiveRecord::Migration
  def change
    create_table :wx_articles do |t|
      t.string :title
      t.string :author
      t.string :digest
      t.string :thumb_media_id
      t.integer :show_cover_pic
      t.text :content
      t.string :content_source_url
      t.integer :cover_file_id
      t.string :content_url
      t.string :news_id
      t.integer :index
      t.string :media_id

      t.references :wx_official_account, index: true

      t.timestamps null: false
    end
  end
end
