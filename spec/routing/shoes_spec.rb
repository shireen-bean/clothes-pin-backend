require 'rails_helper'

RSpec.describe 'routes for shoes' do
  it 'routes GET /shoes/:id to the shoes#show action' do
    expect(get('/shoes/1')).to route_to(
      controller: 'shoes',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /shoes/:id to the shoes#update action' do
    expect(patch('/shoes/1')).to route_to(
      controller: 'shoes',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /shoes/:id to the shoes#destroy action' do
    expect(delete('/shoes/1')).to route_to(
      controller: 'shoes',
      action: 'destroy',
      id: '1'
    )
  end
end
