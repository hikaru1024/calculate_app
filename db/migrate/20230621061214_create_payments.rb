class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :title
      t.references :event, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.integer :cost

      t.timestamps
    end
  end
end
