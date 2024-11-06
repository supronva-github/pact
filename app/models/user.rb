# frozen_string_literal: true

class User < ApplicationRecord
  # has_and_belongs_to_many :skils <- вариант если не нужна моделька
  # has_and_belongs_to_many :interests <- вариант если не нужна моделька
  has_many :skils_users
  has_many :skils, through: :skils_users
  has_many :interests_users
  has_many :interests, through: :interests_users
end
