FactoryGirl.define do
  factory :service, aliases: [:serv, :s] do
    name 'eurusd.bar.1m'
    fund
    setting
    frame
  end
  factory :sol do
    name 'eurusd.sol.1m'
    fund
    setting
    frame
  end
end