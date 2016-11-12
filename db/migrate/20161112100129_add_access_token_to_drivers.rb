class AddAccessTokenToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :access_token, :string
  end
end
