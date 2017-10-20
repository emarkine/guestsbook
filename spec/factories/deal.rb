FactoryGirl.define do
  factory :deal do
    fund
    broker
    delta { 300 }
    invest { 25 }
    description { Faker::Lorem.paragraph rand(1..3) }
  end
end