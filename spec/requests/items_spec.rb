# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items', type: :request do
  describe 'request' do
    let(:item) { create(:item) }
    let(:user) { create(:user) }

    it 'GET new /items' do
      sign_in user
      get '/items/new'
      expect(response).to have_http_status(200)
    end

    it 'GET show /items' do
      get "/items/#{item.id}"
      expect(response).to have_http_status(200)
    end

    it 'GET index /items' do
      get '/items'
      expect(response).to have_http_status(200)
    end

    it 'GET edit /items' do
      get "/items/#{item.id}/edit"
      expect(response).to have_http_status(200)
    end

    it 'POST create /items' do
      sign_in user
      post '/items', params: {
        item: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(200)
    end

    it 'PATCH update /items' do
      patch "/items/#{item.id}", params: {
        item: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(302)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end

    it 'DELETE destroy /items' do
      delete "/items/#{item.id}"
      expect(response).to have_http_status(302)
    end
  end
end
