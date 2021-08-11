class RemoveEndDateFromRecordingSessions < ActiveRecord::Migration[6.1]
  def change
    remove_column :recording_sessions, :end_date, :date
  end
end
