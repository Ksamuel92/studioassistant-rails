module UsersHelper
  def sign_up_button_helper
    if !logged_in?
      content_tag(
        :div,
        button_to('Sign Up', signup_path, method: :get, class: 'text-center btn btn-primary btn-lg')
      )
    end
    end
end
