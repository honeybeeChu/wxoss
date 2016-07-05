class RemoveResImgFromWxAutoResponses < ActiveRecord::Migration
  def change
    remove_column :wx_auto_responses, :res_img
  end
end
