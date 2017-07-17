class AddColumnToForfaits < ActiveRecord::Migration[5.0]
  def change
    add_column :forfaits, :title, :string
    add_column :forfaits, :description, :text
    add_column :forfaits, :avis, :text
    add_column :forfaits, :price, :integer
    add_column :forfaits, :discount, :integer
    add_column :forfaits, :delay_time, :string
  end
end
