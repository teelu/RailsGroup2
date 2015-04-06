class Department < ActiveRecord::Base
	has_many :payrolls

	validates :departmentCode, presence: true
	validates :departmentName, presence: true
end
