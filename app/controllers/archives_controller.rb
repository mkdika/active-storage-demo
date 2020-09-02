class ArchivesController < ApplicationController
  def index
    @archives = Archive.all
    @archive = Archive.new
  end

  def create
    @archive = Archive.new get_params
    if @archive.save
      message = "File upload successfully"
    else
      message = "File upload failed!"
    end
    redirect_to archives_path, notice: message
  end

  private

  def get_params
    params.require(:archive).permit(:fileku)
  end
end