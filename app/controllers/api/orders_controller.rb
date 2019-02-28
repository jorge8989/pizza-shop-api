class Api::OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    def index
      @orders = Order.all
      render json: @orders.select(:id, :state, :delivered_at), status: 200
    end

    def show
      render json: @order, status: 200
    end

    def create
      @order = Order.new(order_params)
      if @order.save
        render json: @order, status: 201
      else
        render json: @order.errors, status: 422
      end
    end

    def update
      if @order.update(order_params)
        render json: @order
      else
        render json: @order.errors, status: 422
      end
    end

    def destroy
      @order.destroy
      render json: @order, status: 202
    end

    private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.permit(:delivered_at, :state)
    end
  end
