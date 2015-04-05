class Department < ActiveRecord::Base
	has_many :payrolls
end
