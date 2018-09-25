class AddTypeToAbility < ActiveRecord::Migration[5.2]
  def change
    add_column :abilities, :phase, :integer
  end
end
