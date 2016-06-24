require 'rails_helper'

RSpec.describe ProfilesController do
  def profile_params
    {
      given_name: 'Shireen'
    }
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

  describe 'GET show' do
    before(:each) do
      get :show, id: profile.id
    end

    it 'is successful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      profile_response = JSON.parse(response.body)
      expect(profile_response).not_to be_nil
    end
  end

  describe 'PATCH update' do
    def profile_diff
      { given_name: 'Jason' }
    end

    before(:each) do
      patch :update, id: profile.id, profile: profile_diff, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      profile_response = JSON.parse(response.body)
      expect(profile_response).not_to be_nil
    end
  end

  describe 'DELETE destroy' do
    it 'is successful and returns an empty response' do
      delete :destroy, id: profile.id, format: :json

      expect(response).to be_successful
      expect(response.body).to be_empty
    end
  end
end
