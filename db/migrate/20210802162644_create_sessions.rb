class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.belongs_to :studio, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :hours_per_day
      t.integer :per_hour

      t.timestamps
    end
  end
end
