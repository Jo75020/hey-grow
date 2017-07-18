class OrdersController < ApplicationController
      skip_before_action :authenticate_user!, only: [:create,:show]
  def create
      @forfait = Forfait.find(params[:forfait_id])
  order  = Order.create!(forfait_title: @forfait.title,forfait_description: @forfait.description, amount: @forfait.price, state: 'pending')

  redirect_to new_order_payment_path(order)
  end
  def show
  @order = Order.where(state: 'paid').find(params[:id])
end
end
