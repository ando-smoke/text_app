class RemoveFkToContactsFromMessages < ActiveRecord::Migration
  def change
    remove_foreign_key :messages, :contacts
  end
end
