RSpec.describe Order, type: :model do
  it { should belong_to(:deal) }
  it { should belong_to(:asset) }

  let(:order) { FactoryGirl.create :order }
  subject { order }
  it { should be_valid }
end
