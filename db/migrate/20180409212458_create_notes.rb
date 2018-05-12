class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :topic
      t.string :professor
      t.string :location
      t.text :full_text
      t.integer :user_id

      t.timestamps
    end
  end
end
