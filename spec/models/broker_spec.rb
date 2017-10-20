RSpec.describe Broker, type: :model do
  # fixtures :brokers
  it { should belong_to(:user) }
  it { should belong_to(:currency) }
  it { should have_many(:assets) }
  broker = Broker.find_by_name 'Test'
  subject { broker }
  it { should be_valid }
  broker.connect
  it { should be_logged }
  # broker.balance = nil
  # expect(balance).to be_nil
  # it { expect(balance).to be_nil }
  broker.balance!
  # expect(broker.balance).to_not be_nil

  after(:context) do
    puts broker
    broker.disconnect
  end

end


