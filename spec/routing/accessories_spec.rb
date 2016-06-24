require 'rails_helper'

RSpec.describe 'routes for accessories' do
  it 'routes GET /accessories/:id to the accessories#show action' do
    expect(get('/accessories/1')).to route_to(
      controller: 'accessories',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /accessories/:id to the accessories#update action' do
    expect(patch('/accessories/1')).to route_to(
      controller: 'accessories',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /accessories/:id to the accessories#destroy action' do
    expect(delete('/accessories/1')).to route_to(
      controller: 'accessories',
      action: 'destroy',
      id: '1'
    )
  end
end
