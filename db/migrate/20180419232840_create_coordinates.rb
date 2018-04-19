class CreateCoordinates < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinates do |t|
      t.string :colour
      t.integer :x
      t.integer :y
      t.integer :user_id

      t.timestamps
    end
  end
end
