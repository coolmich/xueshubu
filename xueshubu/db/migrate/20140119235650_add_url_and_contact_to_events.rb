class AddUrlAndContactToEvents < ActiveRecord::Migration
  def change
    add_column :events, :url, :string
    add_column :events, :contact, :string
  end
end
