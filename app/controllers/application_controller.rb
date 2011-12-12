class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private  
  
  def after_sign_in_path_for(resource_or_scope)
    case resource_or_scope
    when :user, User
      #return_to = return_to_path
      #reset_return_to
      #return_to || 
      user_login_path_for(current_user)
    else
      super
    end
  end

  def user_login_path_for(user)
    if user.first_sign_in?
      #new_hug_prescription_path
      "http://google.com"
    else
      #redirect_to user_path
      "http://ebay.com"
    end
  end
  
end
