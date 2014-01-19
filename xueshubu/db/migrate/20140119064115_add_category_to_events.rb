class AddCategoryToEvents < ActiveRecord::Migration
  def change
    add_column :events, :category, :integer
    add_index :events, :start_date
  end
end
