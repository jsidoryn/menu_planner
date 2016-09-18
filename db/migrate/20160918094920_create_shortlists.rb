class CreateShortlists < ActiveRecord::Migration[5.0]
  def change
    create_table :shortlists do |t|
      t.string :title

      t.timestamps
    end
  end
end
