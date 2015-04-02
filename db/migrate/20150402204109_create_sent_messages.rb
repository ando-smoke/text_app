class CreateSentMessages < ActiveRecord::Migration
  def change
    create_table :sent_messages do |t|
      t.belongs_to :contacts
      t.belongs_to :messages
      t.string :to
      t.timestamps null:false
    end
  end
end
