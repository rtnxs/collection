# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PhotosController, type: :routing do
  describe 'routing' do
    context 'when routing success' do
      it 'routes to #create' do
        expect(post: 'items/photos').to route_to('items#show', id: 'photos')
      end

      it 'routes to #destroy' do
        expect(delete: 'items/1/photos/1').to route_to('photos#destroy', id: '1', item_id: '1')
      end
    end

    context 'when routing denied' do
      it 'routes to #index' do
        expect(get: 'items/items_id/photos').not_to be_routable
      end

      it 'routes to #new' do
        expect(get: 'items/items_id/photos/new').not_to be_routable
      end

      it 'routes to #show' do
        expect(get: 'items/items_id/photos/1').not_to be_routable
      end

      it 'routes to #edit' do
        expect(get: 'items/items_id/photos/1/edit').not_to be_routable
      end

      it 'routes to #update via PUT' do
        expect(put: 'items/items_id/photos/1').not_to be_routable
      end

      it 'routes to #update via PATCH' do
        expect(patch: 'items/items_id/photos/1').not_to be_routable
      end
    end
  end
end
