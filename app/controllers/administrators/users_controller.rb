# frozen_string_literal: true

module Administrators
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def edit
      @user = User.find params[:id]
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to administrators_user_path(@user)
      else
        render 'new'
      end
    end

    def update
      @user = User.find params[:id]
      @user.assign_attributes(user_params)

      if @user.save
        redirect_to administrators_user_path(@user)
      else
        render 'edit'
      end
    end

    def show
      @user = User.find params[:id]
    end

    private

    def user_params
      params.require(:user).permit(
        :name, :email, :password, :password_confirmation,
        :fullname, :gender, :birthday, :phone_number, :avatar
      )
    end
  end
end
