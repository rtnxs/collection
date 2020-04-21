# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'request' do
    let(:comment) { create(:comment) }

    it 'POST /comments' do
      post "/items/#{comment.item.id}/comments", params: {
        comment: { items_id: comment.item.id }
      }
      expect(response).to have_http_status(:success)
    end

    it 'DELETE /comments' do
      delete "/items/#{comment.item.id}/comments/#{comment.id}"
      expect(response).to have_http_status(302)
    end
  end
end
