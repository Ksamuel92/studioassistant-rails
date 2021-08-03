class AddEmailToStudio < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :email, :string
  end
end
