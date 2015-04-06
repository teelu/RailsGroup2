class PayrollsController < ApplicationController
   before_filter :set_default_format_to_xml, only: [:index]
  before_action :set_payroll, only: [:show, :edit, :update, :destroy]

  # GET /payrolls
  # GET /payrolls.json
  def index
    @payrolls = Payroll.all
    @departments = Department.all
    @employees = Employee.all
  end

  # GET /payrolls/1
  # GET /payrolls/1.json
  def show
  
  end

  # GET /payrolls/new
  def new
    @payroll = Payroll.new
    @departments = Department.all
    @employee_types = EmployeeType.all
    @employees = Employee.all
  end

  # GET /payrolls/1/edit
  def edit
    @departments = Department.all
    @employee_types = EmployeeType.all
    @employees = Employee.all
  end

  # POST /payrolls
  # POST /payrolls.json
  def create
    calculatedNetPay = params[:hourlyRate].to_f * params[:normalHours].to_f + params[:allowances].to_f - params[:deductions].to_f
    payroll_params.merge(:netPay => calculatedNetPay.to_i)
    @payroll = Payroll.new(payroll_params)

   

    respond_to do |format|
      if @payroll.save
        format.html { redirect_to @payroll, notice: 'Payroll was successfully created.' }
        format.json { render :show, status: :created, location: @payroll }
      else
        format.html { render :new }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payrolls/1
  # PATCH/PUT /payrolls/1.json
  def update
    respond_to do |format|
      if @payroll.update(payroll_params)
        format.html { redirect_to @payroll, notice: 'Payroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @payroll }
      else
        format.html { render :edit }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payrolls/1
  # DELETE /payrolls/1.json
  def destroy
    @payroll.destroy
    respond_to do |format|
      format.html { redirect_to payrolls_url, notice: 'Payroll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit(:payDate, :hourlyRate, :normalHours, :allowances, :deductions, :netPay, :status, :employee_id, :department_id, :employee_type_id)
    end
end
