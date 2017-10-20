require 'faker'

FactoryGirl.define do

  factory :country do
    name { Faker::Address.country }
    code { Faker::Address.country_code }
  end

  factory :default_country, class: Country do
    name 'Netherlands'
    code 'NL'
  end

end

