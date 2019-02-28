class Api::ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]

    def index
      @products = Product.all
      render json: @products.select(:id, :food_id), status: 200
    end

    def show
      render json: @product, status: 200
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        render json: @product, status: 201
      else
        render json: @product.errors, status: 422
      end
    end

    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: 422
      end
    end

    def destroy
      @product.destroy
      render json: @product, status: 202
    end

    private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.permit(:name, :order_id, :food_id, :cheese, :sauce, :crust, :size, :slices)
    end
  end
