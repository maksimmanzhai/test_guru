class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def default_url_options
    { lang: I18n.locale }
  end

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      admin_tests_path
    elsif resource.class == User
      root_path
    end
  end

  private

    def set_locale
      I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
    end

end
