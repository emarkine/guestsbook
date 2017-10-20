FactoryGirl.define do
  factory :indicator, aliases: [:ind, :rate] do
    name 'rate'
    type 'Indicator::Rate'
    title 'Rate'
    full_name 'Rate & Solution'
    canvas 'Solutuion'
    position 1
  end
  factory :ma do
    name 'ma'
    type 'Indicator::MovingAverage'
    title 'MA'
    full_name 'Moving Average'
    position 3
  end
  factory :sar do
    name 'sar'
    type 'Indicator::Sar'
    title 'SAR'
    full_name 'Parabolic Stop And Reverse'
    position 7
  end
end