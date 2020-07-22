# frozen_string_literal: true

class PhotosController < ApplicationController
  before_action :set_photo, only: %i[destroy]
  before_action :set_item, only: %i[create destroy]
  before_action :authenticate_user!

  def create
    @new_photo = @item.photos.build(photo_params)
    @new_photo.user = current_user

    respond_to do |format|
      if @new_photo.save
        format.html { redirect_to @item, notice: 'Photo was successfully created.' }
      else
        format.html { render 'items/show' }
      end
    end
  end

  def destroy
    @photo.destroy
    redirect_to @item, notice: 'photos destroyed'
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def photo_params
    params.require(:photo).permit(:photo_url)
  end
end
