# frozen_string_literal: true

module Administrators
  class CategoriesController < ApplicationController
    before_action :find_category, only: %i[edit update destroy]

    def index
      @categories = Category.all
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to administrators_categories_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @category.update(category_params)
        redirect_to administrators_categories_path
      else
        render :edit
      end
    end

    def destroy
      if @category.destroy
        flash[:success] = I18n.t('message.categories.actions.destroyed')
        redirect_to administrators_categories_path
      else
        flash[:error] = I18n.t('message.categories.actions.destroy_failure')
      end
    end

    private

    def category_params
      params.require(:category).permit( :name, :description)
    end

    def find_category
      @category = Category.find(params[:id])
    end
  end
end
