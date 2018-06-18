require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/merchants.rb' )
also_reload( '../models/*' )


#INDEX
get '/merchants' do
  @merchants = Merchant.all()
  erb ( :"merchants/index" )
end

#NEW
get '/merchants/new' do
  erb ( :"merchants/new" )
end

#CREATE
post '/merchants' do
  merchant = Merchant.new(params)
  merchant.save
  redirect to("/merchants")
end

#SHOW
get '/merchants/:id' do
  @merchant = Merchant.find(params['id'].to_i)
  erb(:"merchants/show")
end
