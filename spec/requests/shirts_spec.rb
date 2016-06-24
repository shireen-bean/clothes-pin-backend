require 'rails_helper'

RSpec.describe 'Shirts API' do
  def shirt_params
    {
      top_name: 'Shireen shirt one'
    }
  end

  def shirts
    Shirt.all
  end

  def shirt
    Shirt.first
  end

  before(:all) do
    Shirt.create!(shirt_params)
  end

  after(:all) do
    Shirt.delete_all
  end

  describe 'GET /shirts/:id' do
    it 'shows one shirt' do
      get "/shirts/#{shirt.id}"

      expect(response).to be_success

      shirt_response = JSON.parse(response.body)
      expect(shirt_response['id']).to eq(shirt.id)
      expect(shirt_response['top_name']).to eq(shirt.top_name)
    end
  end

  describe 'PATCH /shirts/:id' do
    def shirt_diff
      { top_name: 'Jasons shirt' }
    end

    it 'updates an shirt' do
      patch "/shirts/#{shirt.id}", shirt: shirt_diff, format: :json

      expect(response).to be_success

      shirt_response = JSON.parse(response.body)
      expect(shirt_response['id']).to eq(shirt.id)
      expect(shirt_response['top_name']).to eq(pshirt_diff[:top_name])
    end
  end

  describe 'DELETE /shirts/:id' do
    it 'deletes an shirt' do
      delete "/shirts/#{shirt.id}",
             shirt: { id: shirt.id },
             format: :json

      expect(response).to be_success
      expect(response.body).to be_empty
    end
  end
end
