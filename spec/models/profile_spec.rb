require 'rails_helper'

RSpec.describe Profile do
  describe 'associations' do
    def association
      described_class.reflect_on_association(:user)
    end

  it 'has an association with one user' do
    expect(association).to_not be_nil
    expect(association.name).to eq(:user)
  end

  it 'has a set inverse of record' do
    expect(association.options[:inverse_of]).to eq(:profiles)
  end

  it 'deletes associated clothing items when destroyed' do
    expect(association.options[:dependent]).to eq(:destroy)
  end


  #make sure have title and content when created
  it 'validates presence of content when created' do
    expect(Profile.create(given_name: 'content blah blah')).to be_valid
    expect(Profile.create).to be_invalid
  end
end
end
