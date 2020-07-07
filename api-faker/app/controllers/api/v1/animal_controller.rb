class Api::V1::AnimalController < ApplicationController

  def index
    @animal = AnimalPosition.all
    render json: {status: 'SUCCESS', message: 'Loaded ALL ',data:@animal}, status: :ok
  end
  def all
    @animal = AnimalPosition.all
    render json: {status: 'SUCCESS', message: 'Loaded ALL ',data:@animal}, status: :ok
  end
  def latest
    @current_second = Time.now.min*60 + Time.now.sec
    #@current_second = 2
    @animal = AnimalPosition.find_by(id: @current_second)
    render json: @animal
  end

end
