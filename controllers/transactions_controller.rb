require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/transactions.rb' )
require_relative( '../models/merchants.rb' )
require_relative( '../models/tags.rb' )
also_reload( '../models/*' )

get '/transactions' do
  @transactions = Transaction.all()
  erb ( :"transactions/index" )
end
