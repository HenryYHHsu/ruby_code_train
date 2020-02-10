require 'sinatra'
require "sinatra/reloader"  if development? #如果是在development
require 'httparty'

response = HTTParty.get('https://apiservice.mol.gov.tw/OdService/download/A17030000J-000049-9k0')

get '/' do
    "Welcome Homework 1113"
end

response =response.body # string
response =response.gsub(/\r\n/,',')
response= response.split(',')
response_length=response.size
name_title=response[0..8] # headline
database=response[9..response_length];
database_length=database.size

# 將資料切成各國匯率使用
month=[];
ntd=[];
rmb=[];
jpy=[];
kor=[];
sgd=[];
eu=[];
uk=[];
aus=[];


1.upto(database_length) { |i|
      month << database[i-1]if (i-1)%9==0
      ntd << database[i-1] if (i-1)%9==1
      rmb << database[i-1] if (i-1)%9==2
      jpy << database[i-1] if (i-1)%9==3
      kor << database[i-1] if (i-1)%9==4
      sgd << database[i-1] if (i-1)%9==5
      eu  << database[i-1] if (i-1)%9==6
      uk  << database[i-1] if (i-1)%9==7
      aus  << database[i-1] if (i-1)%9==8
} 

get '/currency' do
    @month=month;
    @ntd=ntd;
    @rmb=rmb;
    @jpy=jpy;
    @kor=kor;
    @sgd=sgd;
    @eu=eu;
    @uk=uk;
    @aus=aus;
    @name_title=name_title;
    erb :form, layout: :my_layout 
end

# get '/' do
#     @name ='Henry'
#     erb :index, layout: :my_layout #
# end

# /say+ 
# get '/Say_hello/:name' do
#     @name =params[:name]
#     erb :index, layout: :my_layout #
# end


# post '/form' do
#     yourdollars = params[:yourdollar].to_f
#     targetdollar = params[:targetdollar].to_f
#     @change
#     erb:result, locals:{results: change}
# end
