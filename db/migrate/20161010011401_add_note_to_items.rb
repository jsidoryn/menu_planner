class AddNoteToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :note, :string
  end
end
