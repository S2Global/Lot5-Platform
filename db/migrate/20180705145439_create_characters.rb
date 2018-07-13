class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.integer :level
      t.integer :exp
      t.references :archetype, foreign_key: true
      t.references :race, foreign_key: true
      t.string :role
      t.integer :hp
      t.integer :strength
      t.integer :vitality
      t.integer :intelligence
      t.integer :dexterity
      t.integer :agility
      t.integer :wisdom
      t.integer :charisma
      t.integer :cp
      t.integer :sp
      t.integer :gp
      t.integer :pp
      t.integer :locX
      t.integer :locY
      t.integer :played
      t.boolean :alive

      t.timestamps
    end
  end
end
