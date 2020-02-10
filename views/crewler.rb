

# require 'nokogiri'
# require 'open-uri'
# require 'json'
# require 'csv'
require 'httparty'

response = HTTParty.get('https://apiservice.mol.gov.tw/OdService/download/A17030000J-000049-9k0')
response =response.body # string
response =response.gsub(/\r\n/,',')
response= response.split(',')
response_length=response.size

name_title=response[0..8] # headline
database=response[9..response_length];
database_length=database.size
database_length
# # 將資料切成各國匯率使用
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


# #----------------------------------------------------
# @month=month;
# @ntd=ntd;
# @rmb=rmb;
# @jpy=jpy;
# @kor=kor;
# @sgd=sgd;
# @en=eu;
# @uk=uk;
# @aus=aus;

# p @month[3]
# p month.to_i
# p ntd
# p aus



# do |x|
#      mouth << database[x-1] if x

# p database
# response=response.match /\D/

# puts response
# 
# response_length=response.size

# p response
# response=response.body.split('\r\n');

# CSV.foreach('score.csv') do |row|
#       a= row.inspect # 將資料取出並以字串方式呈現
#       p a
#       b=a.gsub('"','').gsub('[','').gsub(']','') # 真歸表示法
#     #   b =a.gsub(/\D/,'')
#     #   c=b.split(',');
#       p  b
#     #   data =b.split(",");
#     #   data_score=data[1..5].map {|x| x.to_i}.sum/5.0
#     #   p data_score      
# end    



# csv_array=csv.split(',');

# data=File.open('https://apiservice.mol.gov.tw/OdService/download/A17030000J-000049-9k0')

# currency = Nokogiri::CSV(open('https://apiservice.mol.gov.tw/OdService/download/A17030000J-000049-9k0'))
# pp currency
# month=[]
# currency.css('').each do |link|
     
#     month << link.content
    
# end
# pp month

# usdollars=[]
# currency.css('row col2').each do |link|
     
#     i << link.content
    
# end