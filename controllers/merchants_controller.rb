require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/merchants.rb' )
also_reload( '../models/*' )


#INDEX
get '/merchants' do
  @merchants = Merchant.all()
  erb ( :"merchants/index" )
end

#SHOW
get '/merchants/:id' do
  @merchant = Merchant.find(params['id'].to_i)
  erb(:"merchants/show")
end
