FactoryGirl.define do
  factory :currency, aliases: [:usd, :USD] do
    country
    name 'United States Dollar'
    code 'USD'
    sign '$'
    state 'market'
  end
end
