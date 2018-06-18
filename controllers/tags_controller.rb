require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/tags' )
also_reload( '../models/*' )

#INDEX
get '/tags' do
  @tags = Tag.all()
  erb ( :"tags/index" )
end

#NEW
get '/tags/new' do
  erb ( :"tags/new" )
end

#CREATE
post '/tags' do
  tag = Tag.new(params)
  tag.save
  redirect to("/tags")
end

#SHOW
get '/tags/:id' do
  @tag = Tag.find(params['id'].to_i)
  erb(:"tags/show")
end

#EDIT
get '/tags/:id/edit' do
  @tag = Tag.find(params[:id].to_i)
  erb( :"tags/edit" )
end
