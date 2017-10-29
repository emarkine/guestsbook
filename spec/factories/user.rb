FactoryBot.define do
  LANGUAGES ||= Hash[*%w(nl Dutch en English fr French ru Russian)]

  factory :user do
    sequence(:name) { Faker::Name.first_name }
    sequence(:surname) { Faker::Name.last_name }
    sequence(:email) { Faker::Internet.email }
    sequence(:password) { Faker::Internet.password }
    index = Random.rand(LANGUAGES.size)
    slang = LANGUAGES.to_a[index]
    sequence(:lang) { slang[0] }
    # password_confirmation { |u| u.password }
    mobile { Faker::PhoneNumber.cell_phone }
    currency
    country
    after(:create) do |user|
      user.password_confirmation = user.password
      user.save!
    end
  end

  factory :tester, class: User  do
    name    'tester'
    surname 'MarketTram'
    email   'tester@marketram.com'
    birthday '2015-04-30'
    password 'somepassword'
  end

  factory :eugene, class: User do
    name "Eugene"
    surname "Markine"
    # password "secret123"
    # password_confirmation { password }
    email 'emarkine@gmail.com'
    mobile '0628736786'
  end

end
