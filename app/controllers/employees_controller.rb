class EmployeesController < ApplicationController

	before_action :set_employee, only: [:edit, :update, :show, :destroy] 

	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(first_name: params[:employee][:first_name], middle_name: params[:employee][:middle_name], last_name: params[:employee][:last_name], personal_email: params[:employee][:personal_email], city: params[:employee][:city], state: params[:employee][:state], country: params[:employee][:country], pincode: params[:employee][:pincode], address_line_1: params[:employee][:address_line_1], address_line_2: params[:employee][:address_line_2])
		if @employee.save
			redirect_to employees_path, notice: 'Employees has been created successfully'
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @employee.update(first_name: params[:employee][:first_name], middle_name: params[:employee][:middle_name], last_name: params[:employee][:last_name], personal_email: params[:employee][:personal_email], city: params[:employee][:city], state: params[:employee][:state], country: params[:employee][:country], pincode: params[:employee][:pincode], address_line_1: params[:employee][:address_line_1], address_line_2: params[:employee][:address_line_2])
	    redirect_to employees_path, notice: 'Employee has been updated successfully'
	else
		render :edit
	end
end

def show
	
end

def destroy
	@employee.destroy
	redirect_to employees_path
end

def set_employee
	@employee = Employee.find(params[:id])
rescue ActiveRecord::RecordNotFound => error
	redirect_to employees_path, notice: error
end
end