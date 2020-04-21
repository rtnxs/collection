# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Photos', type: :request do
  describe 'request' do
    let(:photo) { create(:photo) }

    it 'POST /photos' do
      post "/items/#{photo.item.id}/photos", params: {
        photo: { items_id: photo.item.id }
      }
      expect(response).to have_http_status(:success)
    end

    it 'DELETE /photos' do
      delete "/items/#{photo.item.id}/photos/#{photo.id}"
      expect(response).to have_http_status(302)
    end
  end
end
