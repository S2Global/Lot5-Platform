class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :character, foreign_key: true
      t.string :description
      t.integer :uses
      t.integer :durability

      t.timestamps
    end
  end
end
