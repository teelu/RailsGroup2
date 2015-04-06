class EmployeeType < ActiveRecord::Base
	has_many :payrolls

	validates :typeCode, presence: true
	validates :typeName, presence: true
end
