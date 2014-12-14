class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.boolean :on
      t.string :type
      t.references :room_category, index: true

      t.timestamps
    end
  end
end
