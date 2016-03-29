class SpeedtestsController < ApplicationController
  before_action :set_speedtest, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /speedtests
  # GET /speedtests.json
  def index

    @speedtests = Speedtest.all
  end

  # GET /speedtests/1
  # GET /speedtests/1.json
  def show
  end

  # GET /speedtests/new
  def new
    @speedtest = Speedtest.new
  end

  # GET /speedtests/1/edit
  def edit
  end

  # POST /speedtests
  # POST /speedtests.json
  def create
    @speedtest = Speedtest.new(speedtest_params)

    respond_to do |format|
      if @speedtest.save
        format.html { redirect_to @speedtest, notice: 'Speedtest was successfully created.' }
        format.json { render :show, status: :created, location: @speedtest }
      else
        format.html { render :new }
        format.json { render json: @speedtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speedtests/1
  # PATCH/PUT /speedtests/1.json
  def update
    respond_to do |format|
      if @speedtest.update(speedtest_params)
        format.html { redirect_to @speedtest, notice: 'Speedtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @speedtest }
      else
        format.html { render :edit }
        format.json { render json: @speedtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speedtests/1
  # DELETE /speedtests/1.json
  def destroy
    @speedtest.destroy
    respond_to do |format|
      format.html { redirect_to speedtests_url, notice: 'Speedtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speedtest
      @speedtest = Speedtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speedtest_params
      params.permit(:ssid, :ping, :upload, :download)
    end
end
