class ChargesController < ApplicationController
	def new
		# => @charge = Charge.new
	end

	def create
	  # Amount in cents
	  @amount = 500

	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	  redirect_to 'http://youtu.be/SqSWlGonv5g?list=UUFns-k9UgOhVRnKHdynzU2A'

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end


