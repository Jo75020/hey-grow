class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :forfait_title
      t.monetize :amount, currency: { present: false }
      t.json :payment

      t.timestamps
    end
  end
end
