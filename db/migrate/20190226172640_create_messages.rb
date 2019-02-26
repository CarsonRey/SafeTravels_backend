class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.date :date
      t.time :time
      t.string :content
      t.references :conversation, foreign_key: true
      t.references :sender, foreign_key: true, class: 'User'
      t.references :receiver, foreign_key: true, class: 'User'

      t.timestamps
    end
  end
end
