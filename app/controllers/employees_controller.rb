class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def create
        employee = Employee.create(first_name: params[:first_name], last_name: params[:last_name], alias: params[:alias], title: params[:title], office: params[:office], img_url: params[:img_url], dog: params[:dog])

        redirect_to employee_path(employee)
    end
    def update
        @employee = Employee.find(params[:id])
        @employee.update(first_name: params[:employee][:first_name], last_name: params[:employee][:last_name], alias: params[:employee][:alias], title: params[:employee][:title], office: params[:employee][:office], img_url: params[:employee][:img_url], dog_id: params[:employee][:dog_id])
        redirect_to employee_path(@employee)
    end

    def edit
        @employee = Employee.find(params[:id])
    end    
end






































