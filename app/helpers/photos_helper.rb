# frozen_string_literal: true

module PhotosHelper
  def photo_img(item)
    item.photos.present? ? photo.photo_url : (asset_path 'item.jpg')
  end
end
