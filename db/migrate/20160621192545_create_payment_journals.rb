class CreatePaymentJournals < ActiveRecord::Migration
  def change
    create_table :payment_journals do |t|
      t.string :description
      t.decimal :amount, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
