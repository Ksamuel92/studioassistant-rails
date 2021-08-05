module RecordingSessionsHelper
    def hours_per_day_helper(session)
        ActionController::Base.helpers.pluralize(session.hours_per_day, 'hour')
    end
end
