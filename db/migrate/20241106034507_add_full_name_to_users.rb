class AddFullNameToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :full_name, :string
  end

  def down
    remove_column :users, :full_name
  end
end
