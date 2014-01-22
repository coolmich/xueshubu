class AddHighLightToEvents < ActiveRecord::Migration
  def change
    add_column :events, :highlighted, :integer
  end
end
