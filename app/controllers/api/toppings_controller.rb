class Api::ToppingsController < ApplicationController
    before_action :set_topping, only: [:show, :update, :destroy]

    def index
      @toppings = Topping.all
      render json: @toppings.select(:id, :name), status: 200
    end

    def show
      render json: @topping, status: 200
    end

    def create
      @topping = Topping.new(topping_params)
      if @topping.save
        render json: @topping, status: 201
      else
        render json: @topping.errors, status: 422
      end
    end

    def update
      if @topping.update(topping_params)
        render json: @topping
      else
        render json: @topping.errors, status: 422
      end
    end

    def destroy
      @topping.destroy
      render json: @topping, status: 202
    end

    private
    def set_topping
      @topping = Topping.find(params[:id])
    end

    def topping_params
      params.permit(:name, :key_name)
    end
  end
