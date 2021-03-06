require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :course do
    name "The Meadow at Peabody"
    street_address "80 Granite Street"
    city "Peabody"
    state "MA"
    zip_code "01960"

    user
  end

  factory :tee do
    color "White"
    slope 124
    rating 67.2
    yardage 5782
  end

end