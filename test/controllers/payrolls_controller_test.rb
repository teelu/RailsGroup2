require 'test_helper'

class PayrollsControllerTest < ActionController::TestCase
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payrolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payroll" do
    assert_difference('Payroll.count') do
      post :create, payroll: { allowances: @payroll.allowances, deductions: @payroll.deductions, department_id: @payroll.department_id, employee_id: @payroll.employee_id, employee_type_id: @payroll.employee_type_id, hourlyRate: @payroll.hourlyRate, netPay: @payroll.netPay, normalHours: @payroll.normalHours, payDate: @payroll.payDate, status: @payroll.status }
    end

    assert_redirected_to payroll_path(assigns(:payroll))
  end

  test "should show payroll" do
    get :show, id: @payroll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payroll
    assert_response :success
  end

  test "should update payroll" do
    patch :update, id: @payroll, payroll: { allowances: @payroll.allowances, deductions: @payroll.deductions, department_id: @payroll.department_id, employee_id: @payroll.employee_id, employee_type_id: @payroll.employee_type_id, hourlyRate: @payroll.hourlyRate, netPay: @payroll.netPay, normalHours: @payroll.normalHours, payDate: @payroll.payDate, status: @payroll.status }
    assert_redirected_to payroll_path(assigns(:payroll))
  end

  test "should destroy payroll" do
    assert_difference('Payroll.count', -1) do
      delete :destroy, id: @payroll
    end

    assert_redirected_to payrolls_path
  end
end
