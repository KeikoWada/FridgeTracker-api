class CreateExpirationDates < ActiveRecord::Migration[5.1]
  def change
    create_table :expiration_dates do |t|
      t.date :date
      t.string :item_name
      t.string :category

      t.timestamps
    end
  end
end
