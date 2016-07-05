class ChangeDateToWxbatchSendMessage < ActiveRecord::Migration
  def change
    change_column :wx_batch_send_messages,:create_time,:datetime,:null => false
  end
end
