class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.references :creater, foreign_key: true, class: 'User'
      t.string :name
      t.timestamps
    end
  end
end
