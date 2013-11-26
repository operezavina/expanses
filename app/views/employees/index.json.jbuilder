json.array!(@employees) do |employee|
  json.extract! employee, :fname, :lastname, :dateofbirthday, :department, :address, :phone, :mobile, :email, :salary
  json.url employee_url(employee, format: :json)
end
