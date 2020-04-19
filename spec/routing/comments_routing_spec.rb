# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentsController, type: :routing do
  describe 'routing' do
    context 'when routing success' do
      it 'routes to #create' do
        expect(post: 'items/comments').to route_to('items#show', id: 'comments')
      end

      it 'routes to #destroy' do
        expect(delete: 'items/1/comments/1').to route_to('comments#destroy', id: '1', item_id: '1')
      end
    end

    context 'when routing denied' do
      it 'routes to #index' do
        expect(get: 'items/items_id/comments').not_to be_routable
      end

      it 'routes to #new' do
        expect(get: 'items/items_id/comments/new').not_to be_routable
      end

      it 'routes to #show' do
        expect(get: 'items/items_id/comments/1').not_to be_routable
      end

      it 'routes to #edit' do
        expect(get: 'items/items_id/comments/1/edit').not_to be_routable
      end

      it 'routes to #update via PUT' do
        expect(put: 'items/items_id/comments/1').not_to be_routable
      end

      it 'routes to #update via PATCH' do
        expect(patch: 'items/items_id/comments/1').not_to be_routable
      end
    end
  end
end
