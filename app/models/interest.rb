# frozen_string_literal: true

class Interest < ApplicationRecord
  # has_and_belongs_to_many :users <- вариант если не нужна моделька
  has_many :interests_users
  has_many :users, through: :interests_users
end
