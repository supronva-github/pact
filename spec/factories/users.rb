# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    surname { "Ivanov" }
    name { "Petrov" }
    patronymic { "Sidorov" }
    email { "ivan@example.com" }
    age { 25 }
    nationality { "RU" }
    country { "MSK" }
    gender { "male" }

    trait :invalid_age do
      age { 101 }
      email { "example@example.com" }
    end

    trait :invalid_gender do
      gender { "example" }
      email { "example@example.com" }
    end

    trait :invalid do
      name { nil }
      patronymic { nil}
      email { nil }
      age { nil }
      nationality { nil }
      country { nil }
      gender { nil }
    end
  end
end
