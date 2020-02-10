require 'sinatra'
require "sinatra/reloader"  if development? #如果是在development

# get '/cats' do
#     "Hello, sinatra !!!"
# end

# get '/cats/:id' do 
#     #進資料庫查資料    
#     # "Your #{params[:id]}cat"
#     "Your #{params['id']}cat"
# end

get '/' do
    @name ='Henry'
    erb :index, layout: :my_layout #
end

# /say+ 
get '/Say_hello/:name' do
    @name =params[:name]
    erb :index, layout: :my_layout #
end

# /form
