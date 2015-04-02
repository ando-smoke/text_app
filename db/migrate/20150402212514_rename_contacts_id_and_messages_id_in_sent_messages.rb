class RenameContactsIdAndMessagesIdInSentMessages < ActiveRecord::Migration
  def change
    rename_column :sent_messages, :contacts_id, :contact_id
    rename_column :sent_messages, :messages_id, :message_id
  end
end
