class RenameAddressColumnInStudio < ActiveRecord::Migration[6.1]
  def change
    rename_column :studios, :address, :address_line_1
  end
end
