class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.references :world, foreign_key: true
      t.boolean :ongoing
      t.string :notes

      t.timestamps
    end
  end
end
