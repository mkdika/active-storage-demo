class HomeController < ApplicationController
  def index
    @archive = Archive.new
  end
end
