class Employee < ActiveRecord::Base
	has_one :payroll
end
