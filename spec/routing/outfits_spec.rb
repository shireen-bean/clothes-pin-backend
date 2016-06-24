require 'rails_helper'

RSpec.describe 'routes for outfits' do
  it 'routes GET /outfits/:id to the outfits#show action' do
    expect(get('/outfits/1')).to route_to(
      controller: 'outfits',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /outfits/:id to the outfits#update action' do
    expect(patch('/outfits/1')).to route_to(
      controller: 'outfits',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /outfits/:id to the outfits#destroy action' do
    expect(delete('/outfits/1')).to route_to(
      controller: 'outfits',
      action: 'destroy',
      id: '1'
    )
  end
end
