# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :set_paper_trail_whodunnit
  # include Pundit::Authorization
end
