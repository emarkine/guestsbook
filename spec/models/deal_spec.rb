RSpec.describe Deal, type: :model do
  it { is_expected.to be_a_kind_of Store }
  it { should belong_to(:fund) }
  it { should belong_to(:broker) }
  it { should belong_to(:user) }
  # it { should have_many(:orders) }

  let(:deal) { FactoryGirl.create :deal }
  subject { deal }
  it { should be_valid }
  # expect(deal) { should be_valid }

  # before(:each) do
  #   @deal = Factory :deal
  # end
  #
  #
  # it 'should be valid' do
  #  expect(@deal).to be_valid
  # end

  # describe '#valid?' do
  #   context 'when its name is nil' do
  #     let(:deal) { FactoryGirl.create(:deal) }
  #
  #     it 'is not valid' do
  #       expect(deal).to_not be_valid
  #     end
  #   end
  # end

end
