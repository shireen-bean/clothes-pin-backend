require 'rails_helper'

RSpec.describe 'routes for bottoms' do
  it 'routes GET /bottoms/:id to the bottoms#show action' do
    expect(get('/bottoms/1')).to route_to(
      controller: 'bottoms',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /bottoms/:id to the bottoms#update action' do
    expect(patch('/bottoms/1')).to route_to(
      controller: 'bottoms',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /bottoms/:id to the bottoms#destroy action' do
    expect(delete('/bottoms/1')).to route_to(
      controller: 'bottoms',
      action: 'destroy',
      id: '1'
    )
  end
end
