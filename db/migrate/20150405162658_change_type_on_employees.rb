class ChangeTypeOnEmployees < ActiveRecord::Migration
  def change
  	change_column :employees, :employeeID, :integer
  end
end
