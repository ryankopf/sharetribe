class FixNullLastMessageAt < ActiveRecord::Migration[5.2]
  def up
     Conversation.where(:last_message_at => nil).find_each do |conversation|
      conversation.update_column(:last_message_at, conversation.updated_at)
     end
  end

  def down
  end
end
