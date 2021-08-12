class RemoveTypeFromStudios < ActiveRecord::Migration[6.1]
  def change
    remove_column :studios, :type, :string
  end
end
