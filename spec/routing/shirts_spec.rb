require 'rails_helper'

RSpec.describe 'routes for shirts' do
  it 'routes GET /shirts/:id to the shirts#show action' do
    expect(get('/shirts/1')).to route_to(
      controller: 'shirts',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /shirts/:id to the shirts#update action' do
    expect(patch('/shirts/1')).to route_to(
      controller: 'shirts',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /shirts/:id to the shirts#destroy action' do
    expect(delete('/shirts/1')).to route_to(
      controller: 'shirts',
      action: 'destroy',
      id: '1'
    )
  end
end
