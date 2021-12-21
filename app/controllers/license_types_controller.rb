class LicenseTypesController < ApplicationController
  before_action :set_license_type, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /license_types or /license_types.json
  def index
    @license_types = LicenseType.all
  end

  # GET /license_types/1 or /license_types/1.json
  def show
  end

  # GET /license_types/new
  def new
    @license_type = LicenseType.new
  end

  # GET /license_types/1/edit
  def edit
  end

  # POST /license_types or /license_types.json
  def create
    @license_type = LicenseType.new(license_type_params)

    respond_to do |format|
      if @license_type.save
        format.html { redirect_to license_type_url(@license_type), notice: "License type was successfully created." }
        format.json { render :show, status: :created, location: @license_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @license_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /license_types/1 or /license_types/1.json
  def update
    respond_to do |format|
      if @license_type.update(license_type_params)
        format.html { redirect_to license_type_url(@license_type), notice: "License type was successfully updated." }
        format.json { render :show, status: :ok, location: @license_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @license_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /license_types/1 or /license_types/1.json
  def destroy
    @license_type.destroy

    respond_to do |format|
      format.html { redirect_to license_types_url, notice: "License type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_license_type
      @license_type = LicenseType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def license_type_params
      params.require(:license_type).permit(:code, :description, :url, :hours, :alcohol_types)
    end
end
