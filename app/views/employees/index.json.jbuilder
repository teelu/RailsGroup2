json.array!(@employees) do |employee|
  json.extract! employee, :id, :employeeID, :FirstName, :LastName, :Address, :Phone, :Email, :Qualifications, :details
  json.url employee_url(employee, format: :json)
end
