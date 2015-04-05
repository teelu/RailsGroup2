json.array!(@payrolls) do |payroll|
  json.extract! payroll, :id, :payDate, :hourlyRate, :normalHours, :allowances, :deductions, :netPay, :status, :employee_id, :department_id, :employee_type_id
  json.url payroll_url(payroll, format: :json)
end
