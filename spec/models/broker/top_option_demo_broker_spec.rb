RSpec.describe Broker::TopOption, type: :model do
  # fixtures :brokers
  broker = Broker.find_by_name 'TopOptionDemo'
  subject { broker }
  it { should be_valid }
  subject { broker }
  it { should be_valid }
  broker.connect
  it { should be_logged }
  broker.balance!

  # тестируем выбор нормальных опционов
  aex = broker.assets.find_by_name 'AEX'
  broker.select_asset(aex)

  # выбор турбо
  apple = broker.assets.find_by_name 'APPLE'
  broker.select_asset(apple)

  # it { should  }
  # broker.logout!
  # it { should_not be_logged }

  after(:context) do
    puts broker
    broker.disconnect
  end

end
