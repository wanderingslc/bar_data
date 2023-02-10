class ImportController < ApplicationController
  def index
    @location = Location.new
  end

  def import

    Import.import(params[:file])
    # Import.import(params[:location][:file])

    flash[:notice] = "Locations uploaded successfully"
    redirect_to root_path
  end

  def create
    binding.pry
    Import.import(params[:import][:file])
    flash[:notice] = "Locations uploaded successfully"
    redirect_to root_path
  end

  private
  def import_params
    params.permit(:file)
  end
end
