RSpec.describe Service, type: :model do
  it { should belong_to(:setting) }
  it { should belong_to(:fund) }
  it { should belong_to(:frame) }

  let(:service) { FactoryGirl.create :service }
  subject { service }
  it { should be_valid }


end
