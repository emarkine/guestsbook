RSpec.describe Broker::DeGiro, type: :model do
  # fixtures :brokers
  broker = Broker.find_by_name 'DeGiro'
  subject { broker }
  it { should be_valid }
  subject { broker }
  it { should be_valid }
  broker.connect
  it { should be_logged }
  broker.balance!

  after(:context) do
    puts broker
    broker.disconnect
  end

end
