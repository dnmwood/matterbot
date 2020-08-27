class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.belongs_to :subscription, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
