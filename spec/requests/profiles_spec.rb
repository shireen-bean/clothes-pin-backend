require 'rails_helper'

RSpec.describe 'Profiles API' do
  def profile_params
    {
      given_name: 'Shireen'
    }
  end

  def profiles
    Profile.all
  end

  def profile
    Profile.first
  end

  before(:all) do
    Profile.create!(profile_params)
  end

  after(:all) do
    Profile.delete_all
  end

  describe 'GET /profiles/:id' do
    it 'shows one profile' do
      get "/profiles/#{profile.id}"

      expect(response).to be_success

      profile_response = JSON.parse(response.body)
      expect(profile_response['id']).to eq(profile.id)
      expect(profile_response['given_name']).to eq(profile.given_name)
    end
  end

  describe 'PATCH /profiles/:id' do
    def profile_diff
      { given_name: 'Jason' }
    end

    it 'updates an profile' do
      patch "/profiles/#{profile.id}", profile: profile_diff, format: :json

      expect(response).to be_success

      profile_response = JSON.parse(response.body)
      expect(profile_response['id']).to eq(profile.id)
      expect(profile_response['content']).to eq(profile_diff[:given_name])
    end
  end

  describe 'DELETE /profiles/:id' do
    it 'deletes an profile' do
      delete "/profiles/#{profile.id}",
             profile: { id: profile.id },
             format: :json

      expect(response).to be_success
      expect(response.body).to be_empty
    end
  end
end
