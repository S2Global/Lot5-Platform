class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.references :character, foreign_key: true
      t.string :range
      t.string :effect
      t.string :flair
      t.integer :phase

      t.timestamps
    end
  end
end
