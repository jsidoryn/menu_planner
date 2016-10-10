class AddOrderableToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :orderable, :integer
  end
end
