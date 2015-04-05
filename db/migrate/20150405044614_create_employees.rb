class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employeeID
      t.string :FirstName
      t.string :LastName
      t.string :Address
      t.string :Phone
      t.string :Email
      t.string :Qualifications
      t.text :details

      t.timestamps null: false
    end
  end
end
