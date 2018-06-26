class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :range
      t.string :effect
      t.string :flair

      t.timestamps
    end
  end
end
