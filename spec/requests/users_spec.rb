# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'request' do
    let(:user) { create(:user) }

    it 'GET new /users' do
      get '/users/new'
      expect(response).to have_http_status(200)
    end

    it 'GET show /users' do
      get "/users/#{user.id}"
      expect(response).to have_http_status(200)
    end

    it 'GET index /users' do
      get '/users'
      expect(response).to have_http_status(200)
    end

    it 'GET edit /users' do
      get "/users/#{user.id}/edit"
      expect(response).to have_http_status(200)
    end

    it 'POST create /users' do
      post '/users', params: {
        user: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(200)
    end

    it 'PATCH update /users' do
      patch "/users/#{user.id}", params: {
        user: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(302)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end

    it 'DELETE destroy /users' do
      delete "/users/#{user.id}"
      expect(response).to have_http_status(302)
    end
  end
end
