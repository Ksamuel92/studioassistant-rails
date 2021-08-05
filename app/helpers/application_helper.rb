module ApplicationHelper
    def current_user 
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def navigation_helper 
        if !logged_in?
            link_to("Sign Up", signup_path)
            link_to("Log In", login_path)
        else 
            link_to("Log Out", logout_path, method: 'delete')
        end
    end
end
