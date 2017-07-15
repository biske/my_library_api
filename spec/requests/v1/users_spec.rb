require 'rails_helper'

describe 'users' do
  describe 'POST /users' do
    let(:email) { 'foo.bar@example.com' }
    let(:password) { '123456' }
    let(:first_name) { 'Foo' }
    let(:last_name) { 'Bar' }

    it 'returns status 201' do
      post '/v1/users', params: { user: { email: email, password: password } }
      expect(response.status).to eq 201
    end

    it 'returns 422 if validation fails' do
      post '/v1/users', params: { user: { email: nil, password: password } }
      expect(response.status).to eq 422
    end

    it 'returns user data' do
      post '/v1/users', params: { user: { email: email, first_name: first_name, last_name: last_name,
        password: password } }
      
      expect(json.keys.sort).to eq ['id', 'email', 'first_name', 'last_name', 'created_at', 'updated_at'].sort
      expect(json['email']).to eq email
    end
  end
end