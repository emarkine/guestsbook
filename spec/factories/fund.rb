FactoryGirl.define do
  factory :fund, aliases: [:eurusd, :f] do
    currency
    sequence(:name) { |n| "eurusd #{n}" }
    # name 'eurusd'
    short_name '€/$'
    full_name 'EUR/USD'
    category 'valuta'
    product 'EUR.USD'
    underlying 'EUR'
    security_type 'CASH'
    exchange 'IDEALPRO'
    comma 5
    open_time "00:00:00"
    close_time "23:59:59"
    watch true
    show_index 101
  end
end