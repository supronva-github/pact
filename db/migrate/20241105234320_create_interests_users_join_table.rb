# frozen_string_literal: true

class CreateInterestsUsersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :interests, :users do |t|
      t.index [:interest_id, :user_id], unique: true
    end
  end
end
