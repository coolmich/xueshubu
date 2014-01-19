class DeleteTimeColumn < ActiveRecord::Migration
  def change
    remove_column :events, :time
  end
end
