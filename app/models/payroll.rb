class Payroll < ActiveRecord::Base
	belongs_to :employee
	belongs_to :department
	belongs_to :employee_type
	validates_associated :employee
	validates :payDate, :hourlyRate, :normalHours, :status, :employee_id, :department_id, :employee_type_id, presence: true
	validates_numericality_of :hourlyRate, less_than: 999.99
	validates_numericality_of :normalHours, less_than: 999
	validates_numericality_of :allowances, less_than: 9999.99
	validates_numericality_of :deductions, less_than: 9999.99
	validates_numericality_of :netPay, less_than: 99999.99

end

