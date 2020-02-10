#--------

require 'sinatra'
require 'sinatra/reloader'

enable :sessions

get '/login' do
    erb :login, {layout: :my_layout}
end

post '/login' do
    username = params[:username]
    password = params[:password]
    if username=='kk'&& password='123'
       session[:user9527] = username
    end
    redirect '/login'
end

get '/logout' do
    sessions[:user9527] = nil
    redirect '/login'
end


# get '/' do
#     @name=(1..43).to_a.sample;
#     @friend=['Steven','Robby','Henry']
#     erb :index, {layout: :my_layout} # layout: :my_layout ----hash
# end

# post '/bmi' do
#     # "Hello #{params['height']}"
#      h = params[:height].to_i/100.0
#      w = params[:weight].to_i
#      bmi= w/(h*h).round(2)
#      "你的BMI= #{bmi}}"
# end

# get '/' do
#     if params[:height] && params[:weight]
#         h = params[:height].to_i/100.0
#         w = params[:weight].to_i
#         @bmi= w/(h*h).round(2)
#         erb :index, {layout: :my_layout} 
#     end
# end


