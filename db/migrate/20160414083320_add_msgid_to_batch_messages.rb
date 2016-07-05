class AddMsgidToBatchMessages < ActiveRecord::Migration
  def change
    add_column :wx_batch_send_messages, :msg_id,:string
    add_column :wx_batch_send_messages, :msg_data_id,:string
    add_column :wx_batch_send_messages, :msg_status,:string
    add_column :wx_batch_send_messages, :totalCount,:integer
    add_column :wx_batch_send_messages, :filterCount,:integer
    add_column :wx_batch_send_messages, :sentCount,:integer
    add_column :wx_batch_send_messages, :errorCount,:integer

  end
end
