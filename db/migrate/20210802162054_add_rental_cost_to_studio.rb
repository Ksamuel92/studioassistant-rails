class AddRentalCostToStudio < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :rental_cost, :integer
  end
end
