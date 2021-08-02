class AddRefsToStudio < ActiveRecord::Migration[6.1]
  def change
    add_reference :studios, :user, null: false, foreign_key: true
  end
end
