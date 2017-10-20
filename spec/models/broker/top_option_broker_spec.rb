RSpec.describe Broker::TopOption, type: :model do
  # fixtures :brokers
  broker = Broker.find_by_name 'TopOption'
  subject { broker }
  it { should be_valid }
  subject { broker }
  it { should be_valid }
  broker.connect
  it { should be_logged }
  broker.balance!
  # it { should  }
  # broker.logout!
  # it { should_not be_logged }

  after(:context) do
    puts broker
    broker.disconnect
  end

end
