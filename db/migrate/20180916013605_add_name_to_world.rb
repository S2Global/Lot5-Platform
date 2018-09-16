class AddNameToWorld < ActiveRecord::Migration[5.2]
  def change
    add_column :worlds, :name, :string
  end
end
