class ChangePhoneNumberTypeInRestaurants < ActiveRecord::Migration[7.2]
  def change
    change_column :restaurants, :phone_number, :string # Change this to the desired type
  end
end
