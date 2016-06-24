require 'rails_helper'

RSpec.describe 'routes for profiles' do
  it 'routes GET /profiles/:id to the profiles#show action' do
    expect(get('/profiles/1')).to route_to(
      controller: 'profiles',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /profiles/:id to the profiles#update action' do
    expect(patch('/profiles/1')).to route_to(
      controller: 'profiles',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /profiles/:id to the profiles#destroy action' do
    expect(delete('/profiles/1')).to route_to(
      controller: 'profiles',
      action: 'destroy',
      id: '1'
    )
  end
end
