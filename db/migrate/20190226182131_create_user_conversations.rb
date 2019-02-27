class CreateUserConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_conversations do |t|
      t.references :sender, foreign_key: true, class: 'User'
      t.references :conversation, foreign_key: true, class: 'User'
      t.timestamps
    end
  end
end
