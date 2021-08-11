module RecordingSessionsHelper
    def hours_per_day_helper(session)
        ActionController::Base.helpers.pluralize(session.hours_per_day, 'hour')
    end

    def index_header_sessions
      if params[:action] == "this_week"
          "This Week's Sessions"
        else
          "Your Sessions"
        end
    end

    def days_available_helper(session)
        pluralize(session.days_available_by_budget, "day")
    end
end

