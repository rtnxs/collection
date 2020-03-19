# frozen_string_literal: true

module UsersHelper
  def user_avatar(user)
    user.avatar.present? ? user.avatar : (asset_path 'avatar.jpg')
  end
end
