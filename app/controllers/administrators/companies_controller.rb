module Administrators
  #Book Publishing Companies
  class CompaniesController < ApplicationController
    before_action :find_company, only: %i[edit update show destroy]

    def index
      @pagy, @companies = pagy(Company.all)
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
      if @company.update(company_params)
        flash[:success] = I18n.t('message.companies.actions.updated')
        redirect_to administrators_companies_path
      else
        flash[:error] = I18n.t('message.companies.actions.update_failure')
        render :edit
      end
    end

    def show
      @company = Company.new
    end

    def destroy
      if @company.destroy
        flash[:success] = I18n.t('message.companies.actions.destroyed')
        redirect_to administrators_companies_path
      else
        flash[:error] = I18n.t('message.companies.actions.destroy_failure')
      end
    end

    private

    def company_params
      params.require(:company).permit(:name, :description)
    end

    def find_company
      @company = Company.find(params[:id])
    end

  end
end
