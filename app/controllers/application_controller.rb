class ApplicationController < ActionController::Base

	before_action :configure_parameter_permitted, if: :devise_controller?

	def configure_parameter_permitted
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end
