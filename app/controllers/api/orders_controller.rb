class Api::OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    def index
      @orders = Order.all.order(created_at: :desc)
      render 'index', status: 200
    end

    def create
      @order = Order.new(order_params)
      if @order.save
        render 'show', status: 201
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
      params.permit(:delivered_at, :state,
        products_attributes: [
          :id,
          :food_id,
          :flavor_id,
          :cheese,
          :sauce,
          :crust,:size,
          :slices,
          topping_ids: []
        ])
    end
  end
