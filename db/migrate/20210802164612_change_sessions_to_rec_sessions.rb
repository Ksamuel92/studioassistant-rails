class ChangeSessionsToRecSessions < ActiveRecord::Migration[6.1]
  def change
    rename_table :sessions, :recsessions
  end
end
