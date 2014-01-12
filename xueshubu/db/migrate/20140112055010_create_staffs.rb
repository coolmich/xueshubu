class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.text :description
      t.attachment :first_img

      t.timestamps
    end
  end
end
