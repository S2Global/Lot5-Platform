class AddNameToSession < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :name, :string
    add_column :sessions, :context, :string
    add_column :sessions, :ended, :boolean
  end
end
