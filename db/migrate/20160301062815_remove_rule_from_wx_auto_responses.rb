class RemoveRuleFromWxAutoResponses < ActiveRecord::Migration
  def change
    remove_column :wx_auto_responses, :rule_name
    remove_column :wx_auto_responses, :keys
  end
end
