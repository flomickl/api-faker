class Api::V1::GeolifeController < ApplicationController

  def index
    @positions = GeolifePosition.all
    json_response(@positions)
  end

  def all
    @positions = GeolifePosition.all
    render json: {status: 'SUCCESS', message: 'Loaded ALL ',data:@positions}, status: :ok

  end

  def latest
    @current_second = Time.now.min*60 + Time.now.sec
    #@current_second = 2
    @position = GeolifePosition.find_by(id: @current_second)
    render json: {status: 'SUCCESS', message: 'Loaded Latest ',data:@positions}, status: :ok
  end
end
