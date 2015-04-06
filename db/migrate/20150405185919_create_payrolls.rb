class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
      t.date :payDate
      t.decimal :hourlyRate :precision => 2
      t.integer :normalHours 
      t.decimal :allowances
      t.decimal :deductions
      t.decimal :netPay :precision => 2
      t.string :status
      t.integer :employee_id
      t.references :employee
      t.string :department_id
      t.references :department
      t.string :employee_type_id
      t.references :employee_type

      t.timestamps null: false
    end
  end
end
