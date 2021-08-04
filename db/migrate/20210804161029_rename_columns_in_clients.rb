class RenameColumnsInClients < ActiveRecord::Migration[6.1]
  def change
    rename_column :clients, :band?, :band
    rename_column :clients, :drums?, :drums
  end
end
