class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

def authorize_request_for_admin(role)
    unless current_user.email == 'kari@gmail.com'
        redirect_to photo_path, notice:"No estas autorizado para subir fotos"
    end
end

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end
end
