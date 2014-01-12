class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :time
      t.string :place
      t.text :description
      t.attachment :event_img

      t.timestamps
    end
  end
end
