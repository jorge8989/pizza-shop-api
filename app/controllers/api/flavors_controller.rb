class Api::FlavorsController < ApplicationController
    before_action :set_flavor, only: [:show, :update, :destroy]

    def index
      @flavors = Flavor.all
      render json: @flavors.select(:id, :name), status: 200
    end

    def show
      render json: @flavor, status: 200
    end

    def create
      @flavor = Flavor.new(flavor_params)

      if @flavor.save
        render json: @flavor, status: 201
      else
        render json: @flavor.errors, status: 422
      end
    end

    def update
      if @flavor.update(flavor_params)
        render json: @flavor
      else
        render json: @flavor.errors, status: 422
      end
    end

    def destroy
      @flavor.destroy
      render json: @flavor, status: 202
    end

    private
    def set_flavor
      @flavor = Flavor.find(params[:id])
    end

    def flavor_params
      params.permit(:name, :key_name)
    end
  end
