# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:user) { create(:user) }
  let(:item) { create(:item) }
  let(:valid_attributes) do
    FactoryBot.attributes_for(:comment, item_ids: [item.id], user_id: user.id)
  end

  let(:invalid_attributes) do
    { text: nil }
  end

  let(:valid_session) { {} }

  before do
    sign_in user
  end

  # describe 'GET #index' do
  #   it 'returns a success response' do
  #     Comment.create! valid_attributes
  #     get :index, params: {}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'GET #new' do
  #   it 'returns a success response' do
  #     get :new, params: {}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe 'GET #edit' do
  #   it 'returns a success response' do
  #     comment = Comment.create! valid_attributes
  #     get :edit, params: { id: comment.to_param }, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end
  #
  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Comment' do
        expect do
          post :create, params: { params: valid_attributes }, session: valid_session
        end.to change(Comment, :count).by(1)
      end

    #   it 'redirects to the created comment' do
    #     post :create, params: { comment: valid_attributes }, session: valid_session
    #     expect(response).to redirect_to(Comment.last)
    #   end
    # end
    #
    # context 'with invalid params' do
    #   it "returns a success response (i.e. to display the 'new' template)" do
    #     post :create, params: { comment: invalid_attributes }, session: valid_session
    #     expect(response).to be_successful
    #   end
    end
  end
  #
  # describe 'PUT #update' do
  #   context 'with valid params' do
  #     let(:new_attributes) do
  #       skip('Add a hash of attributes valid for your model')
  #     end
  #
  #     it 'updates the requested comment' do
  #       comment = Comment.create! valid_attributes
  #       put :update, params: { id: comment.to_param, comment: new_attributes }, session: valid_session
  #       comment.reload
  #       skip('Add assertions for updated state')
  #     end
  #
  #     it 'redirects to the comment' do
  #       comment = Comment.create! valid_attributes
  #       put :update, params: { id: comment.to_param, comment: valid_attributes }, session: valid_session
  #       expect(response).to redirect_to(comment)
  #     end
  #   end
  #
  #   context 'with invalid params' do
  #     it "returns a success response (i.e. to display the 'edit' template)" do
  #       comment = Comment.create! valid_attributes
  #       put :update, params: { id: comment.to_param, comment: invalid_attributes }, session: valid_session
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe 'DELETE #destroy' do
  #   it 'destroys the requested comment' do
  #     comment = Comment.create! valid_attributes
  #     expect do
  #       delete :destroy, params: { id: comment.to_param }, session: valid_session
  #     end.to change(Comment, :count).by(-1)
  #   end
  #
  #   it 'redirects to the comments list' do
  #     comment = Comment.create! valid_attributes
  #     delete :destroy, params: { id: comment.to_param }, session: valid_session
  #     expect(response).to redirect_to(comments_url)
  #   end
  # end
end
