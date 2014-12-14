class CreateRoomCategories < ActiveRecord::Migration
  def change
    create_table :room_categories do |t|
      t.references :room, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
