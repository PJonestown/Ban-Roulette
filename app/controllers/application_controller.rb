class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  IP = '127.0.0.1'
end
