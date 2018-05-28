class AddUserIdToList < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :user_id, :integer
    remove_column :lists, :note_id
  end
end
