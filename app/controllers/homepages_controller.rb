class HomepagesController < ApplicationController
  before_action :set_homepage, only: %i[ show edit update destroy ]

  # GET /homepages or /homepages.json
  def index
    @homepages = Homepage.all
  end

  # GET /homepages/1 or /homepages/1.json
  def show
  end

  # GET /homepages/new
  def new
    @homepage = Homepage.new
  end

  # GET /homepages/1/edit
  def edit
  end

  # POST /homepages or /homepages.json
  def create
    @homepage = Homepage.new(homepage_params)

    respond_to do |format|
      if @homepage.save
        format.html { redirect_to homepage_url(@homepage), notice: "Homepage was successfully created." }
        format.json { render :show, status: :created, location: @homepage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepages/1 or /homepages/1.json
  def update
    respond_to do |format|
      if @homepage.update(homepage_params)
        format.html { redirect_to homepage_url(@homepage), notice: "Homepage was successfully updated." }
        format.json { render :show, status: :ok, location: @homepage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepages/1 or /homepages/1.json
  def destroy
    @homepage.destroy

    respond_to do |format|
      format.html { redirect_to homepages_url, notice: "Homepage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homepage
      @homepage = Homepage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def homepage_params
      params.fetch(:homepage, {})
    end
end
