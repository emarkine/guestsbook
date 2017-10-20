FactoryGirl.define do
  factory :entry do
    sequence(:name) { Faker::Cat.name }
    sequence(:title) { Faker::Cat.breed }
    sequence(:author) { Faker::Name.name }
    sequence(:date) { Faker::Date.backward(7) }
    # t.string :file
    user

    factory :entry_with_children do
      transient do
        children_count 5
      end
      after(:create) do |entry, evaluator|
        create_list(:entry, evaluator.children_count, parent: entry)
      end
    end
  end

end

