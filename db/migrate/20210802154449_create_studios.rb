class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :daw
      t.string :type

      t.timestamps
    end
  end
end
