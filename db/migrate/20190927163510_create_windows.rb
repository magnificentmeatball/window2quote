class CreateWindows < ActiveRecord::Migration[6.0]
  def change
    create_table :windows do |t|
      t.string :style
      t.float :length
      t.float :width
      t.float :height
      t.string :colour
      t.string :glassType
      t.decimal :estimate
      t.string :installation

      t.timestamps
    end
  end
end
