require 'rails_helper'

describe 'users' do
  describe 'POST /users' do
    let(:email) { 'test@test.com' }
    it 'returns status 201' do
      post '/users', params: { user: { email: email } }
      expect(response.status).to eq 201
    end

    it 'returns 422 if validation fails' do
      post '/users', params: { user: { email: nil } }
      expect(response.status).to eq 422
    end

    it 'returns user data' do
      post '/users', params: { user: { email: email } }
      
      expect(json.keys.sort).to eq ['id', 'email', 'created_at', 'updated_at'].sort
      expect(json['email']).to eq email
    end
  end
end