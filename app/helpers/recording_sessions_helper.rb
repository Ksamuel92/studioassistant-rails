module RecordingSessionsHelper
  def hours_per_day_helper(session)
    pluralize(session.hours_per_day, 'hour')
  end

  def index_header_sessions
    if params[:action] == 'thisweek'
      "This Week's Sessions"
    else
      'Your Sessions'
    end
  end

  def days_available_helper(session)
    pluralize(session.days_available_by_budget, "day")
  end

  def submit_form_helper
    if params[:action] == 'edit'
      'Edit Session'
    else
      'Create Session'
    end
  end
end

