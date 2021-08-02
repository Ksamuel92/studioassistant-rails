class AddDescriptionToStudio < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :description, :text
  end
end
