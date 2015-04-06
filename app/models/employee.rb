class Employee < ActiveRecord::Base
	has_one :payrolls

	validates :employeeID, presence: true
	validates :employeeID, uniqueness: true
	validates :FirstName, presence: true
	validates :FirstName, length: {maximum: 15}
	validates :LastName, presence: true
	validates :LastName, length: {maximum: 15}
	validates :Address, presence: true
	validates :Address, length: {maximum: 40}
	validates :Phone, presence: true
	validates :Phone, length: {maximum: 15}
	validates :Email, presence: true
	validates :Email, length: {maximum: 25}
	validates :Qualifications, presence: true
	validates :Qualifications, length: {maximum: 30}
end
