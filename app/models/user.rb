# frozen_string_literal: true

class User < ApplicationRecord
  has_and_belongs_to_many :skils
  has_and_belongs_to_many :interests
end
