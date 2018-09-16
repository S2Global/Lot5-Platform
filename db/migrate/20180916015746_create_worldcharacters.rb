class CreateWorldcharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :worldcharacters do |t|
      t.references :character, foreign_key: true
      t.references :world, foreign_key: true

      t.timestamps
    end
  end
end
