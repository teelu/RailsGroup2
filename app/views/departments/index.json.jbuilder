json.array!(@departments) do |department|
  json.extract! department, :id, :departmentCode, :departmentName
  json.url department_url(department, format: :json)
end
