require 'rails_helper'

describe 'users' do
  describe 'POST /users' do
    it 'returns status 201' do
      post '/users', params: { user: { email: 'test@test.com' } }
      expect(response.status).to eq 201
    end

    it 'returns 422 if validation fails' do
      post '/users', params: { user: { email: nil } }
      expect(response.status).to eq 422
    end
  end
end