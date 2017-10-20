RSpec.describe Asset, type: :model do
  it { should belong_to(:fund) }
  it { should belong_to(:broker) }
  it { should have_many(:orders) }

  let(:asset) { FactoryGirl.create :asset }
  subject { asset }
  it { should be_valid }
end

