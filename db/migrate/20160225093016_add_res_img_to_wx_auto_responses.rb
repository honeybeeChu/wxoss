class AddResImgToWxAutoResponses < ActiveRecord::Migration
  def change
  	add_column :wx_auto_responses, :res_img, :string
  end
end
