class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :keyword
      t.integer :note_id

      t.timestamps
    end
  end
end
