class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :departmentCode
      t.string :departmentName

      t.timestamps null: false
    end
  end
end
