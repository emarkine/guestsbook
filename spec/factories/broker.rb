FactoryGirl.define do
  factory :broker do
    user
    currency
    name 'Test'
    short_name 'test'
    type 'Broker::Test'
    status 'active'
    sort 'binary'
    balance 1000
  end
end
