require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference("Employee.count") do
      post employees_url, params: { employee: { address: @employee.address, city: @employee.city, department: @employee.department, email: @employee.email, hire_date: @employee.hire_date, manager: @employee.manager, name: @employee.name, phone: @employee.phone, position: @employee.position, salary: @employee.salary, state: @employee.state, termination_date: @employee.termination_date, termination_reason: @employee.termination_reason, zip: @employee.zip } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { address: @employee.address, city: @employee.city, department: @employee.department, email: @employee.email, hire_date: @employee.hire_date, manager: @employee.manager, name: @employee.name, phone: @employee.phone, position: @employee.position, salary: @employee.salary, state: @employee.state, termination_date: @employee.termination_date, termination_reason: @employee.termination_reason, zip: @employee.zip } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
