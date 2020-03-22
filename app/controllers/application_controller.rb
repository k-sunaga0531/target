class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [ :user_name, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end


  # ログイン後、リダイレクト先メソッドafter_sign_in_path_forをオーバーライドする。
  def after_sign_in_path_for(resource)
    # POSTの場合、after_login_to_post_pathに遷移
    if session[:after_login_to_post]
      after_login_to_groups_path
    # そうじゃない時はtopへリダイレクト
    else
      root_path
    end
  end
end
