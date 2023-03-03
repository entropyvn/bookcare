# frozen_string_literal: true

module Administrators
  module Users
    # Return the activity changes of the data user
    class ActivitiesController < ApplicationController
      before_action :find_user

      def show
        @activites = Activities::UserActivity.where(item_id: @user.id)
      end

      private

      def find_user
        @user = User.find(params[:id])
      end
    end
  end
end
