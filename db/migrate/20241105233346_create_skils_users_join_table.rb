# frozen_string_literal: true

class CreateSkilsUsersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skils, :users do |t|
      t.index [:skil_id, :user_id], unique: true
    end
  end
end
