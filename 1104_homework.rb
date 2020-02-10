# def generate_odd_numbers(n)
#     (1..n).select{|x| x.odd?} # 使用select
# end


  
#   p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
#   p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
#   p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
#   p generate_odd_numbers(6)  # 印出 [1, 3, 5]
#   p generate_odd_numbers(3)  # 印出 [1, 3] 

#------------------------------------------------------------
# def calc_area(radius)
#       pi= Math::PI;
#       if radius>0 
#       area= pi*((radius)*(radius))
#       else
#     puts  "Radius must greater than zero!"
#       end
# end
  
#   puts calc_area(8)   # 印出 201.06
#   puts calc_area(10)  # 印出 314.16
#   puts calc_area(15)  # 印出 706.86
#   puts calc_area(-1)  # 印出 Radius must greater than zero!
#---------------------------------------------------------------

# def generate_order_code(str)

#     puts "TN-000000#{str}" if str<10 
#     puts "TN-00000#{str}" if str<100 && str>10
#     puts "TN-0000#{str}" if str<1000 && str>100
#     puts "TN-000#{str}" if str<10000 && str>1000
#     puts "TN-00#{str}" if str<100000 && str>10000
#     puts "TN-0#{str}" if str<1000000 && str>100000
#   end
#   def generate_order_code(str)

#     # "TN-"+("%07d" % str)
#     serial= "%07d" % str
#      "TN-#{serial}"
#   end

#  puts generate_order_code(29)    # 印出 TN-0000029
#  puts generate_order_code(328)   # 印出 TN-0000328
#  puts generate_order_code(1224)  # 印出 TN-0001224

#---------------------------------------------------------------
# require 'csv'
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
    #   data =b.split(",");
    #   c=data[1..5].map{|x| puts x, x.to_i}
    #   p c
    #   data_modify=data.gsub!(/[/,'"');



    #   c=data.split(',')
    #   data =b.split(','); #切成陣列
    #   data_s=data[1..5]
    #   puts data_s

# csv = CSV.read("score.csv") #一次性讀取
# # a =csv[1..-2];
# puts csv 
# CSV.foreach('score.csv') do |row|
#  puts  row # 將資料取出並以字串方式呈現
# end
#------soultion-------------------------------
# File.readlines('score.csv').each do |line|
# data =line.split(',')
# puts data[5]
# end
# average =data[1..5].map {|x| x.to_i}.sum/5.0
# p average
# puts "#{data.first.capitalize}:#{average}"
# end
#---------------------------------------------




#請寫一段程式，印出 P 開頭的程式語言

# puts language.select{|x| x[0]=='P'}
# puts language.select{|x| x.start_with?('P')}
#找出名字最短的程式名語
language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']
# sort_short=language.sort_by { |word| word.length }.first #check Ruby API
# puts sort_short
# p language.min(1) {|a, b| a.length <=> b.length } #check Ruby API

#-----------------------------------------------
# def calc_age(birthday)
#     length=birthday.size # 判斷字串長度
#     years=birthday[0..3].to_i # 取年份
#     birthday_sort=birthday.gsub('/','0')
    
#     #-------------------單數月單數日
#        months= birthday_sort[5].to_i  if length==8
#        days= birthday_sort[7].to_i    if length==8
#     #-------------------雙數月單數日or單數月雙數日
#        months=birthday_sort[4..6].delete('0').to_i  if length==9
#        days=birthday_sort[7..8].to_i if length==9
#     #--------------------雙數月雙數日--------------------------
        
#         months=birthday_sort[5..6].to_i  if length==10
#         days=birthday_sort[8..9].to_i if length==10
#     #---------------------------------------------------------
#     #-----由上述格式轉換可得到年/月/日
#         puts birthday_sort
#         puts years
#         puts months
#         puts days

#         # compare_1= months-
        
#         standard=[2020,1,1] # reference years
#         ages =(standard[0]-years) if (months <= standard[1]) && (days >= standard[2])
#         ages =(standard[0]-years-1) if (months > standard[1]) && (days >= standard[2])
       
#         puts ages


#end
#-------------------------sloution----------------------------------------
# require 'date'
# def calc_age(birthday)
#     ((Date.today-Date.parse(birthday)).to_i/365.0).ceil # 使用Date函式庫 
# end
# puts calc_age('1985/1/2')  # 印出 35
# puts calc_age('1997/8/28') # 印出 22
#-----------------------------------------------------------------------------------

    #台灣公司的統一編號跟身份證字號一樣都是有規則的：共八位數字

    #各數字分別乘以 1,2,1,2,1,2,4,1
    #例：統一編號為 53212539
    #先將統編每位數乘以一個固定數字固定值
    #5   3   2   1   2   5   3   9
    #x 1   2   1   2   1   2   4   1
    #================================
    #  5   6   2   2   2  10  12   9
    def is_valid_company_no?(serial)
       serial_array=[]
       serial_size=serial.size;
       standard=[1,2,1,2,1,2,4,1]
       puts "Format incorrects" if serial_size < 8 || serial_size>8
       #-------------------------------------------
       if serial_size == 8
          checksum=0
          serial_integer=[]
        serial_array=serial.split('')# 將數值從字串傳換成陣列
        # serial_array_i=serial_array[0..7].to_i;
        puts serial_array
        serial_array.map.with_index do |value,index| 
            # puts "index: #{index} for #{value}"
            checksum=checksum+((value.to_i*standard[index]).divmod(10).sum) #表示累加
        end
         (checksum%10==0)||(serial_array[6]=='7'&&(checksum+1)%10==0)
    end
end

#     #-------------------------------------------------------------------------------
#         # standard.zip(serial_array_i).map {|x,y| x * y}
    
#         # serial_array.map.with_index do |x,index|
#         #     checksum+=(x.to_i*standard[index]).divmod(10).sum#計算標準值
#         # end
#         #  serial.split('').map.with_index do |s, index| 
#         #    checksum+=(s.to_i*standard[index]).divmod(10).sum
#         #  end

# end
    #   puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
      puts is_valid_company_no?('24536806') # 印出 true
#       puts is_valid_company_no?('12222539') # 印出 false