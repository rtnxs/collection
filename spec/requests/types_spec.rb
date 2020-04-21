# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Types', type: :request do
  describe 'request' do
    let(:type) { create(:type) }

    it 'GET new /types' do
      get '/types/new'
      expect(response).to have_http_status(200)
    end

    it 'GET show /types' do
      get "/types/#{type.id}"
      expect(response).to have_http_status(200)
    end

    it 'GET index /types' do
      get '/types'
      expect(response).to have_http_status(200)
    end

    it 'GET edit /types' do
      get "/types/#{type.id}/edit"
      expect(response).to have_http_status(200)
    end

    it 'POST create /types' do
      post '/types', params: {
        type: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(302)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end

    it 'PATCH update /types' do
      patch "/types/#{type.id}", params: {
        type: {
          name: Faker::Name.name_with_middle[0..6]
        }
      }
      expect(response).to have_http_status(302)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end

    it 'DELETE destroy /types' do
      delete "/types/#{type.id}"
      expect(response).to have_http_status(302)
    end
  end
end
