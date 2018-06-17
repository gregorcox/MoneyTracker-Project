require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/merchants.rb' )
also_reload( '../models/*' )

get '/merchants' do
  @merchants = Merchant.all()
  erb ( :"merchants/index" )
end
