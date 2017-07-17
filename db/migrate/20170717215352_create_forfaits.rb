class CreateForfaits < ActiveRecord::Migration[5.0]
  def change
    create_table :forfaits do |t|
      t.timestamps
    end
  end
end
