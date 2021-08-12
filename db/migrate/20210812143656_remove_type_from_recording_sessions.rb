class RemoveTypeFromRecordingSessions < ActiveRecord::Migration[6.1]
  def change
    remove_column :recording_sessions, :type, :string
  end
end
