class Payroll < ActiveRecord::Base
	belongs_to :employee
	belongs_to :department
	belongs_to :employee_type
end

