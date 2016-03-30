class ChartsController < ApplicationController
  def index

    @speedtests = Speedtest.all
  end
end
