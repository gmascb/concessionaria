class PageController < ApplicationController
  def index
    check_user
  end
end
