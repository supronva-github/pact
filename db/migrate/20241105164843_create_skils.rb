# frozen_string_literal: true

class CreateSkils < ActiveRecord::Migration[6.1]
  def change
    create_table :skils do |t|
      t.string :name

      t.timestamps
    end
  end
end
