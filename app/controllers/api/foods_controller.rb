class Api::FoodsController < ApplicationController
  def index
    @foods = Food.all
    render json: @foods.select(:id, :name, :customizable), status: 200
  end
end
