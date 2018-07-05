class CreateArchetypes < ActiveRecord::Migration[5.2]
  def change
    create_table :archetypes do |t|
      t.string :name
      t.string :description
      t.string :hp_level
      t.string :skill_1
      t.string :skill_2
      t.string :skill_3
      t.string :skill_4
      t.string :skill_5
      t.string :skill_6
      t.string :skill_7
      t.string :skill_8
      t.string :skill_9
      t.string :skill_10

      t.timestamps
    end
  end
end
