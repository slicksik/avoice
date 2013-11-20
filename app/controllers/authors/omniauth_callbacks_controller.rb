class Authors::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @author = Author.find_for_facebook_oauth(request.env["omniauth.auth"], current_author)

    if @author.persisted?
      sign_in_and_redirect @author, :event => :authentication #this will throw if @author is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_author_registration_url
    end
  end
end