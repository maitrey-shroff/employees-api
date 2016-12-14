class Api::V2::EmployeesController < ApplicationController

  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create

    @employee = Employee.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], ssn: params[:ssn], birthdate: params[:birthdate])

    render :show
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], ssn: params[:ssn], birthdate: params[:birthdate])
    @employee.save
    render :show
  end

end