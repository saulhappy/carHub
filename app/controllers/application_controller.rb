class ApplicationController < ActionController::Base
  helper_method :current_user

    def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      else
        @current_user = nil
      end
    end

    # def logged_in
    #   redirect_to "login" unless 
    #     session.include? :user_id
    #   end
    # end
end
