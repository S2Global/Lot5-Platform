class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :exp
      t.string :arch
      t.string :race
      t.string :class
      t.integer :hp
      t.integer :cp
      t.integer :sp
      t.integer :gp
      t.integer :pp
      t.integer :locationX
      t.integer :locationY

      t.timestamps
    end
  end
end
