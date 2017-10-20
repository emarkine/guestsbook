require 'rails_helper'

RSpec.describe Entry, type: :model do

  let(:entry)  { create :entry }

  it 'has a valid factory'  do
    expect(entry).to be_valid
  end

  it 'has a valid build factory'  do
    expect(build(:entry)).to be_valid
  end

  it 'is invalid without a name' do
    expect(build(:entry, name: nil)).not_to be_valid
  end

  it 'is invalid without a title' do
    expect(build(:entry, title: nil)).not_to be_valid
  end

  it 'is invalid without a date' do
    expect(build(:entry, date: nil)).not_to be_valid
  end

  it 'is invalid without a user' do
    expect(build(:entry, user: nil)).not_to be_valid
  end

  it 'has user' do
    expect(entry.user).to be_instance_of User
  end

  #
  # let(:centry)  { create :entry_with_children }
  #
  # it 'has many children' do
  #   expect(centry.children.size).to be > 0
  # end

end
