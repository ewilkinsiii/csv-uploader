json.extract! employee, :id, :name, :position, :email, :phone, :address, :city, :state, :zip, :salary, :manager, :department, :hire_date, :termination_date, :termination_reason, :created_at, :updated_at
json.url employee_url(employee, format: :json)
