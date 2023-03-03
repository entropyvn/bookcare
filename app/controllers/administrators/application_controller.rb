# frozen_string_literal: true

module Administrators
  class ApplicationController < ActionController::Base
    layout 'administrator'

    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit

    include Pundit::Authorization
  end
end
