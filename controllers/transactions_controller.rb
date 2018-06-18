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

#CREATE
post '/transactions' do
  transaction = Transaction.new(params)
  transaction.save
  redirect to("/transactions")
end

#EDIT
get '/transactions/:id/edit' do
  @tags = Tag.all()
  @merchants = Merchant.all()
  @transactions = Transaction.find(params['id'])
  erb( :"transactions/edit" )
end

#UPDATE
post '/transactions/:id' do
  @transaction = Transaction.new(params)
  @transation.update
  redirect to("/transactions")
end
