	class AddAccessTokenToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :access_token, :string
  end
end
