class CreateEmployeeTypes < ActiveRecord::Migration
  def change
    create_table :employee_types do |t|
      t.string :typeCode
      t.string :typeName

      t.timestamps null: false
    end
  end
end
