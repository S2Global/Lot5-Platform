class AddWorldToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :world, foreign_key: true
  end
end
