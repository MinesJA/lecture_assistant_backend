class AddNoteIdToListitem < ActiveRecord::Migration[5.1]
  def change
    add_column :list_items, :note_id, :integer
  end
end
