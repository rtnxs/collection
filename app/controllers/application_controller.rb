# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  helper_method :user_can_edit?, :user_admin?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
        :account_update,
        keys: %i[role password password_confirmation current_password]
    )

    devise_parameter_sanitizer.permit(
        :sign_up,
        keys: %i[name password password_confirmation current_password]
    )
  end

  def default_url_options
    I18n.locale == I18n.default_locale ? { locale: nil } : { locale: I18n.locale }
  end

  def user_admin?
    current_user.role == 'admin'
  end

  def user_can_edit?(model)
    user_signed_in? && (model.try(:user) == current_user || user_admin? || current_user == @user)
  end

  private

  def set_locale
    locale =
      if params[:locale]
        session[:locale] = params[:locale]
      elsif current_user
        current_user.locale
      elsif session[:locale]
        session[:locale]
      else
        http_accept_language.compatible_language_from(I18n.available_locales)
      end

    if locale && I18n.available_locales.include?(locale.to_sym)
      session[:locale] = I18n.locale = locale.to_sym
    end
  end
end
