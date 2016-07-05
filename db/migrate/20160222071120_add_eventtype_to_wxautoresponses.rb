class AddEventtypeToWxautoresponses < ActiveRecord::Migration
  def change
  	add_column :wx_auto_responses, :event_type, :integer
  end
end
