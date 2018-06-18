require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/transactions.rb' )
require_relative( '../models/merchants.rb' )
require_relative( '../models/tags.rb' )
also_reload( '../models/*' )

#INDEX
get '/transactions' do
  @transactions = Transaction.all()
  erb ( :"transactions/index" )
end

#NEW
get '/transactions/new' do
  @tags = Tag.all()
  @merchants = Merchant.all()
  erb ( :"transactions/new" )
end
