class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create,:new]
  before_action :set_order

  def new
    @all_marketing_options = ["1 à 3","4 à 9","10+","Aucune || Je ne sais pas"]
    @all_answers_options = ["Oui","Non","Je ne sais pas"]

    @amount
  end

  def show
  end

def test

end

def do_test
  @all_marketing_options = ["1 à 3","4 à 9","10+","Aucune || Je ne sais pas"]
  @all_answers_options = ["Oui","Non","Je ne sais pas"]
  @marketing_1 = params[:marketing_1]
  @answer_1 = params[:answer_1]
  @answer_2 = params[:answer_2]
  @answer_3 = params[:answer_3]
  @answer_4 = params[:answer_4]
  @answer_5 = params[:answer_5]
  @answer_6 = params[:answer_6]
  @answer_7 = params[:answer_7]
  @result = "#{@marketing_1}#{@marketing_2}#{@marketing_3}#{@marketing_4}#{@answer_1}#{@answer_2}#{@answer_3}#{@answer_4}#{@answer_5}#{@answer_6}#{@answer_7}"
  respond_to do |format|
    format.html {render or redirect_to new_order_payment_path(@order)}
    format.js
  end
end


  def create


    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount, # or amount_pennies
      description:  "Payment for forfait #{@order.forfait_title} for order #{@order.id}",
      currency:     @order.amount.currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

private


  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
  end
end
