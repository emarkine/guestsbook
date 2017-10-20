RSpec.describe Broker::TopOption, type: :model do
  # fixtures :brokers
  broker = Broker.find_by_name 'TwentyFourOptionDemo'
  subject { broker }
  it { should be_valid }
  subject { broker }
  it { should be_valid }
  broker.connect
  it { should be_logged }
  broker.balance!

  # тестируем выбор нормальных опционов
  eur = broker.assets.where(name: 'EUR/USD', delta: 600).first
  broker.select_asset(eur)
  broker.invest(50)
  broker.direction(false)
  sleep 5

  # выбор турбо
  eur = broker.assets.where(name: 'EUR/USD', delta: 60).first
  broker.select_asset(eur)
  broker.invest(25)
  broker.direction(true)
  order_id, strike, open_time = broker.buy
  puts "order_id: #{order_id}"
  puts "strike: #{strike}"
  puts "open_time: #{open_time}"
  sleep 60
  result = broker.result
  puts "result: #{result}"

  num_orders = broker.orders.size
  broker.import
  expect(broker.orders.size).to be >  num_orders


  # it { should  }
  # broker.logout!
  # it { should_not be_logged }

  after(:context) do
    puts broker
    broker.disconnect
  end

end
