require "sinatra"
require "sinatra/reloader"
require "stripe"

# change for production
set :publishable_key, ENV['TEST_PUBLISH']
set :secret_key, ENV['TEST_SECRET']

Stripe.api_key = settings.secret_key

class DonationApp < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

  post '/charge' do
    # amount in cents
    @amount = params[:customer_amount] * 100

    customer = Stripe::Customer.create(
      email: params[:customer_email],
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      amount: @amount,
      description: 'Ada Donation',
      currency: 'usd',
      customer: customer.id
    )
    erb :receipt
  end

  # get '/receipt' do
  #   erb :receipt
  # end

end
