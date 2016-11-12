class AddCabNumberToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :cab_no, :string
  end
end
