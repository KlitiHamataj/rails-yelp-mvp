class ChangePhoneNumberToBeStringInRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :Restaurants, :phone_number, :string
  end
end
