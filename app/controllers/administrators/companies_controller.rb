module Administrators
  class CompaniesController < ApplicationController
    before_action :find_company, only: %i[edit update show destroy]
    def index
      @companies = Company.all
    end

    def new
      @company = Company.new
    end

    def create
      @company = Company.new(company_params)
      if @company.save
        redirect_to administrators_companies_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @company.update company_params 
        redirect_to administrators_companies_path(@company);
      else
        render :edit;
      end
    end

    def show
      
    end

    def destroy
      if @company.destroy
        flash[:success] = 'OK'
      else
        flash[:error] = 'Faild'
      end
      redirect_to administrators_companies_path
    end

    def find_company
      @company = Company.find params[:id]
    end

    def company_params
      params.require(:company).permit(
        :name, :description, :display_order
      )
    end
  end
end
