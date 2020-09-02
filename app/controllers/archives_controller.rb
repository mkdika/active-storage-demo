class ArchivesController < ApplicationController
  def index
    @archives = Archive.all
    @archive = Archive.new
  end

  def create
    @archive = Archive.new get_params
    @archive.save
    redirect_to archives_path
  end

  private

  def get_params
    params.require(:archive).permit(:fileku)
  end
end