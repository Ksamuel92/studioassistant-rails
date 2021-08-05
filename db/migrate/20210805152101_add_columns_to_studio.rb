class AddColumnsToStudio < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :address_line_2, :string
    add_column :studios, :city, :string
    add_column :studios, :state, :string
    add_column :studios, :zip_code, :string
  end
end
