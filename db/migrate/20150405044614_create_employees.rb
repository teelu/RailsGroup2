class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employeeID 
      t.string :FirstName :length => 15
      t.string :LastName :length => 15
      t.string :Address :length => 40
      t.string :Phone :length => 15
      t.string :Email :length => 25
      t.string :Qualifications :length => 30
      t.text :details

      t.timestamps null: false
    end
  end
end
