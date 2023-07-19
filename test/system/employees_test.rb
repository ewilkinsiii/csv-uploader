require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Address", with: @employee.address
    fill_in "City", with: @employee.city
    fill_in "Department", with: @employee.department
    fill_in "Email", with: @employee.email
    fill_in "Hire date", with: @employee.hire_date
    fill_in "Manager", with: @employee.manager
    fill_in "Name", with: @employee.name
    fill_in "Phone", with: @employee.phone
    fill_in "Position", with: @employee.position
    fill_in "Salary", with: @employee.salary
    fill_in "State", with: @employee.state
    fill_in "Termination date", with: @employee.termination_date
    fill_in "Termination reason", with: @employee.termination_reason
    fill_in "Zip", with: @employee.zip
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Address", with: @employee.address
    fill_in "City", with: @employee.city
    fill_in "Department", with: @employee.department
    fill_in "Email", with: @employee.email
    fill_in "Hire date", with: @employee.hire_date
    fill_in "Manager", with: @employee.manager
    fill_in "Name", with: @employee.name
    fill_in "Phone", with: @employee.phone
    fill_in "Position", with: @employee.position
    fill_in "Salary", with: @employee.salary
    fill_in "State", with: @employee.state
    fill_in "Termination date", with: @employee.termination_date
    fill_in "Termination reason", with: @employee.termination_reason
    fill_in "Zip", with: @employee.zip
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
