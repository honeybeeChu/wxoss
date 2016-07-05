class AddDateToWxbatchSendMessage < ActiveRecord::Migration
  def change
    add_column :wx_batch_send_messages, :create_time,:datetime
    add_column :wx_batch_send_messages, :is_deleted,:integer
  end
end
