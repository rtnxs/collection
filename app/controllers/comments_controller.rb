# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_comment, only: %i[destroy]
  before_action :set_item, only: %i[create destroy]

  def create
    @new_comment = @item.comments.build(comment_params)
    @new_comment.user = current_user

    if @new_comment.save
      redirect_to @item, notice: t('Comment was successfully created')
    else
      render 'items/show', alert: t('Error')
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @item, notice: 'Comment was successfully destroyed.' }
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :user_id, :item_id)
  end
end
