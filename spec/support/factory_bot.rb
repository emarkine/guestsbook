RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  Faker::Config.locale = :en
  config.before(:all) do
    create :default_country
  end
end

