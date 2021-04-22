class CreateXBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :x_blocks do |t|
      t.string :title
      t.text :front_body
      t.text :back_body
      t.string :type

      t.timestamps
    end
  end
end
