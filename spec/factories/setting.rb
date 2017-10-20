FactoryGirl.define do
  factory :setting, aliases: [:set] do
    indicator
    name 'bar'
  end
  # factory :sol do
  #   indicator
  #   name 'sol'
  #   delta 300
  #   separate true
  #   color '#7777ff'
  #   fill 'orange'
  #   color_high 'darkgreen'
  #   fill_high 'green'
  #   color_low 'brown'
  #   fill_low 'red'
  #   line_width 1
  #   radius 1
  #   grid true
  #   chart true
  # end
  # factory :ema60 do
  #   ma
  #   name 'ema60'
  #   method 'exponential'
  #   period 60
  #   color 'Blue'
  #   line_width 1
  # end
  # factory :sar do
  #   sar
  #   name 'sar'
  #   incremental_step 0.02
  #   initial_step 0.02
  #   maximum_step 0.2
  #   color 'gray'
  #   fill 'lightblue'
  #   line_width 1
  #   radius 2
  # end

end