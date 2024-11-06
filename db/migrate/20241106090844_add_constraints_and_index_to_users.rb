# frozen_string_literal: true

class AddConstraintsAndIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :name, false
    change_column_null :users, :surname, false
    change_column_null :users, :email, false

    add_index :users, :email, unique: true
  end
end
