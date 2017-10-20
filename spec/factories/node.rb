FactoryGirl.define do
  factory :node, class: :Node do
    sequence(:title) {Faker::Company.name}
    sequence(:name) {Faker::Name.first_name}
  end
end
