class AddRecipesToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :expiration_dates, :user, foreign_key: true
  end
end
