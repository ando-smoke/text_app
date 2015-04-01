class AddContactIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :contact_id, :integer
    add_foreign_key :messages, :contacts
  end
end
