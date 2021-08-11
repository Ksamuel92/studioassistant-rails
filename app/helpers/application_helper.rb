module ApplicationHelper
  def current_user 
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def navigation_helper
    if !logged_in?
      content_tag(:li, link_to('Log In', login_path, class: 'nav-item nav-link active')) 
    else
      links = links_to_add
      tags = html_escape('')
      links.each { |link| tags << content_tag(:li, link) }
      tags
    end
  end

  private

  def links_to_add
  [
    link_to('My Studios', studios_path, class: 'nav-item nav-link'), 
    link_to('My Sessions', recording_sessions_path, class: 'nav-item nav-link' ),
    link_to('This Week', thisweek_recording_sessions_path, class: 'nav-item nav-link'),
    link_to('Log Out', logout_path, method: 'delete', class: 'nav-item nav-link')
  ]
  end
end
