# frozen_string_literal: true

class Skil < ApplicationRecord
  # has_and_belongs_to_many :users  <- вариант если не нужна моделька
  has_many :skils_users
  has_many :users, through: :skils_users
end
