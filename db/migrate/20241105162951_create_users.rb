# frozen_string_literal: true


class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :email
      t.string :gender
      t.integer :age
      t.string :nationality
      t.string :country

      t.timestamps
    end
  end
end
