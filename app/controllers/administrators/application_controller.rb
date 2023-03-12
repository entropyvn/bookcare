# frozen_string_literal: true

module Administrators
  class ApplicationController < ActionController::Base
    layout 'administrator'

    before_action :set_locale
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit

    include Pundit::Authorization
    include Pagy::Backend

    private

    def set_locale
      I18n.locale = params[:locale].presence || 'vi'
    end
  end
end
