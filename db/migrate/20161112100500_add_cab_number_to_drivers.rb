class AddCabNumberToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :cab_no, :string
  end
end
