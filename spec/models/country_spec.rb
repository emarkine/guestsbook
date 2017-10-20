require 'rails_helper'

RSpec.describe Country, type: :model do

  let(:country)  { create :country }
  let(:default_country)  { create :default_country }

  it 'has a valid factory'  do
    expect(country).to be_valid
  end

  it 'has a valid build factory'  do
    expect(build(:country)).to be_valid
  end

  it 'is invalid without a name' do
    expect(build(:country, name: nil)).not_to be_valid
  end

  it 'is invalid without a code' do
    expect(build(:country, code: nil)).not_to be_valid
  end

  it 'model has list' do
    expect(Country.list.size).to be > 0
  end

  it 'model has list with first default country' do
    ned = Country.list.first
    expect(ned.first).to match default_country.name
  end


end
