class RemoveContactIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :contact_id
  end
end
