class EmployeeType < ActiveRecord::Base
	has_many :payrolls
end
