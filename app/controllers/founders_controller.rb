class FoundersController < ApplicationController
  before_action :set_founder, only: %i[ show edit update destroy ]

  # GET /founders or /founders.json
  def index
    @founders = Founder.all
  end

  # GET /founders/1 or /founders/1.json
  def show
  end

  # GET /founders/new
  def new
    @founder = Founder.new
  end

  # GET /founders/1/edit
  def edit
  end

  # POST /founders or /founders.json
  def create
    @founder = Founder.new(founder_params)

    respond_to do |format|
      if @founder.save
        format.html { redirect_to founder_url(@founder), notice: "Founder was successfully created." }
        format.json { render :show, status: :created, location: @founder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /founders/1 or /founders/1.json
  def update
    respond_to do |format|
      if @founder.update(founder_params)
        format.html { redirect_to founder_url(@founder), notice: "Founder was successfully updated." }
        format.json { render :show, status: :ok, location: @founder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /founders/1 or /founders/1.json
  def destroy
    @founder.destroy

    respond_to do |format|
      format.html { redirect_to founders_url, notice: "Founder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_founder
      @founder = Founder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def founder_params
      params.require(:founder).permit(:title, :content, :user_id, :slug)
    end
end
