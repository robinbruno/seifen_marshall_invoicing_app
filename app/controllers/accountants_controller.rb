class AccountantsController < ApplicationController
  before_action :set_accountant, only: %i[ show edit update destroy ]

  # GET /accountants or /accountants.json
  def index
    @accountants = Accountant.all
  end

  # GET /accountants/1 or /accountants/1.json
  def show
  end

  # GET /accountants/new
  def new
    @accountant = Accountant.new
  end

  # GET /accountants/1/edit
  def edit
  end

  # POST /accountants or /accountants.json
  def create
    @accountant = Accountant.new(accountant_params)

    respond_to do |format|
      if @accountant.save
        format.html { redirect_to accountant_url(@accountant), notice: "Accountant was successfully created." }
        format.json { render :show, status: :created, location: @accountant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountants/1 or /accountants/1.json
  def update
    respond_to do |format|
      if @accountant.update(accountant_params)
        format.html { redirect_to accountant_url(@accountant), notice: "Accountant was successfully updated." }
        format.json { render :show, status: :ok, location: @accountant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountants/1 or /accountants/1.json
  def destroy
    @accountant.destroy!

    respond_to do |format|
      format.html { redirect_to accountants_url, notice: "Accountant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountant
      @accountant = Accountant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accountant_params
      params.require(:accountant).permit(:name, :address, :phone_number, :email)
    end
end
