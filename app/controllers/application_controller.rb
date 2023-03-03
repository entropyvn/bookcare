# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit

  include Pundit::Authorization

  private

  def set_locale
    I18n.locale = params[:locale].presence || session[:locale].presence || :vi
    session[:locale] = I18n.locale
  end
end
