#-----------CoreWar level8 --No.9 ------------------
# def century(year)
#     data = (year/100) 
#     if year %100== 0;
#     data = (year/100) ;
#     else
#     data = (year/100)+1 ; 
#     end
#     puts " #{data}世紀"
# end

# puts century(1705)  # 18 世紀
# puts century(1900)  # 19 世紀
# puts century(1601)  # 17 世紀
# puts century(2000)  # 20 世紀


#-----------CoreWar level8 --No.10 ------------------
# def solution(sentence)
#     sentence=sentence.split(' ')
#     sentence=sentence.reverse.join(' ')
#     pp sentence
# end
  
# puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The

#---------CoreWar level8 --No.11 -------------可以思考一下為什麼分行寫印不出來------
# def squareSum(numbers)
#     #   numbers*numbers if numbers.kind_of?(Integer)
#     # numbers.map.with_index {|x| x*x}.sum if numbers.kind_of?(Array)
#     # numbers.kind_of?(Array) # kind_of 判斷型態
#     if numbers.kind_of?(Integer)
#         numbers*numbers
#     elsif numbers.kind_of?(Array)
#         numbers.map.with_index {|x| x*x}.sum
#     end
# end
  
# puts squareSum(2)          # 印出 4
# puts squareSum([1, 2, 2])  # 印出 9
#--------CoreWare  level8 --No.11 -------------------
# def remove_char(s)
#     s_size=s.length
#     s.slice!(1..(s_size-2))
# end
  
#   p remove_char('eloquent')  # "loquen"
#   p remove_char('country')   # "ountr"
#   p remove_char('person')    # "erso"
#   p remove_char('place')     # "lac"
#   p remove_char('ok')        # ""
#---------CoreWar level8 --No.13 --------------------
# def positive_sum(arr)
#     arr=arr.sum
#   end
  
#   puts positive_sum([1,2,3,4,5])   # 15
#   puts positive_sum([1,-2,3,4,5])  # 13
#   puts positive_sum([-1,2,3,4,-5]) # 9
#---------CoreWar level8 --No.14 ---------------------
# def correct(string)
#     string.gsub(/[510]/, '5' => 'S', '1' => 'I','0' => 'O')
#   end
  
# puts correct("L0ND0N")     # LONDON
# puts correct("DUBL1N")     # DUBLIN
# puts correct("51NGAP0RE")  # SINGAPORE
# puts correct("BUDAPE5T")   # BUDAPEST
# puts correct("PAR15")      # PARIS

#---------CoreWar level8 --No.15 ---------------------
# def count_sheeps(array)
#     array.select{|x| x==true}.count
    # array.count(true) ** 需切記ture用法
# end

  
# array1 = [true,  true,  true,  false,
#             true,  true,  true,  true ,
#             true,  false, true,  false,
#             true,  false, false, true ,
#             true,  true,  true,  true ,
#             false, false, true,  true ]
                
# puts count_sheeps(array1)  # 17

#---------CoreWar level8 --No.16----------------------
# def sum_array(arr)
#     # puts "0" if (arr.empty?) || (arr.nil?)
    
#     puts "0" if arr.nil? || arr.empty?
#     arr_size = arr.size if arr.kind_of?(Array) 
#     puts "0"  if arr_size <= 2
#     if arr_size >= 3
#         arr_sort=arr.sort;
#         new_arr=arr_sort[1..(arr_size-2)].sum
#    end 
# end
  
# # puts sum_array(nil)                      # 0
# # puts sum_array([])                       # 0
# puts sum_array([3])                      # 0
# puts sum_array([-3])                     # 0
# puts sum_array([ 3, 5])                  # 0
# puts sum_array([-3, -5])                 # 0
# puts sum_array([6, 2, 1, 8, 10])         # 16
# puts sum_array([6, 0, 1, 10, 10])        # 17
# puts sum_array([-6, -20, -1, -10, -12])  # -28
# puts sum_array([-6, 20, -1, 10, -12])    # 3

#---------CoreWar level8 --No.17----------------------
# def merge_arrays(a, b)
#     new_array=(a+b).sort.uniq  
# end
  
# p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
# p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]

#-------CoreWar level8 --No.18--------------------------
# def abbrev_name(name)
#     name=name.gsub(/[a-z]/,'').gsub(/ /,'.');
# end
  
#   puts abbrev_name("Sam Harris")      # S.H
#   puts abbrev_name("Patrick Feenan")  # P.F
#   puts abbrev_name("Evan Cole")       # E.C
#   puts abbrev_name("P Favuzzi")       # P.F
#   puts abbrev_name("David Mendieta")  # D.M
#-------CoreWar level8 --No.19--------------------------
# require 'prime' # 誤解題目意思不是找質數
# def square_or_square_root(array)
#     array.map do |x|
#         if Math.sqrt(x)%1==0
#             Math.sqrt(x).ceil
#         else
#            x**2
#         end

#     end
# end
  
# p square_or_square_root([4, 3, 9, 7, 2, 1])      # [2, 9, 3, 49, 4, 1]
# p square_or_square_root([100, 101, 5, 5, 1, 1])  # [10, 10201, 25, 25, 1, 1]
# p square_or_square_root([1, 2, 3, 4, 5, 6])      # [1, 4, 9, 2, 25, 36]
#-------CoreWar level8 --No.20---------------------------
# correct 參數是正確答案，answer 參數是學生作答答案，每答對一題得 4 分，答錯一題扣 1 分，沒答不得分也不扣分
# def check_exam(correct, answer)
#     correct_size=correct.size;
#     sum=0
#     for  i in (0..(correct_size-1))   
#          if correct[i]==answer[i] && answer[i]!=''
#               sum=sum+4 
#          elsif correct[i]!=answer[i] && answer[i]!=''
#               sum=sum-1
#          end    
#     end
      
#     return sum if sum >0
#     return 0 if sum <0
# end
  
# puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
# puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
# puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
# puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0

#-------CoreWar level8 --No.21-----------------------------
# def give_me_five
#     a=[]
#     number=[a,a,a,a,a].size
# end  
  
# puts give_me_five  # 5

#-------CoreWar level8 --No.22------------------------------
# 想辦法讓以下程式正常運作：
# class Array
#     def second
#        a= self ; 
#     # a_size=a.size;
#     # return a[1] if a_size>=2 
#     # return a[1] if a_size<=1
#     return a[1] 
#     end
# end


# p [1,2,3].second  # 2
# p [].second   # nil
#  p [1].second  # nil

#-------CoreWar level8 --No.23--------------------------------
# def compute
#     if block_given?
#     yield
#     else
#     puts "Do not compute"
#     end
# end
  
# puts compute { "Block" }  # 印出 Block
# puts compute              # 印出 Do not compute

#------CoreWar Level8 --No.24----------------------------------
# class Ghost
#     def color
#         a = ["white","yellow","purple","red"]
#         a.sample
#     end
# end
  
# ghost = Ghost.new
# puts ghost.color          # 隨機印出 white, yellow, purple, red 這四種顏色的字串

#-----CoreWar Level8 --No.25------------------------------------
# class Cat
#     # attr_reader :name
#     def  initialize(name)
#         @name=name;
#     end

#     def speak
#         p "#{@name} meows"
#     end

# end

# kitty = Cat.new('Mr Whiskers')
# kitty.speak   # 印出 Mr Whiskers meows.

# nancy = Cat.new('Lamp')
# nancy.speak   # 印出 Lamp meows.

# sherly = Cat.new('$$Money Bags$$')
# sherly.speak  # 印出 $$Money Bags$$ meows.

#----------CoreWar Level8-----No.26------------------------------------------------
# class Ball
    
#     def  initialize(ball_type="regular") 
#         @ball_type=ball_type
#     end
#     def ball_type
#     return  @ball_type
#     end
# end
# #   
# ball1 = Ball.new()
# puts ball1.ball_type   # 印出 regular
  
# ball2 = Ball.new("super")
# puts ball2.ball_type   # 印出 super

#----------CoreWar Level8----No.27--------------------------------------------------
# def format_money(amount)
#     #  "%.2f" % amount  #Uses str as a format specification, and returns the result of applying it to arg.
#     #"%05d" % amount
    
# end
  
# puts format_money(39.99)  # 印出 $39.99
# puts format_money(39.90)  # 印出 $39.90
# puts format_money(39)     # 印出 $39.00

#----------CoreWar Level8---No.28----------------------------------------------------
# def twice_as_old(father, son)
#     (1..100).each do |x|
#       return 0 if father == (2*son)
#     data= (2*(son+(x))).divmod(father+(x))
#       return  x if data[1]==0 
#     end
     
# end
  
# puts twice_as_old(36,7)   # 22
#   puts twice_as_old(65,30)  # 5
#  puts twice_as_old(42,21)  # 0
#   puts twice_as_old(22,1)   # 20
#   puts twice_as_old(29,0)   # 29

#---------CoreWar Level8---No.29------------------------------------------------------
# def powers_of_two(n)
#     result=[]
#     (0..n).each do |x|
#       result <<  2 ** x       
#     end
#     return  result
# end
  
# p powers_of_two(0)   # [1]
# p powers_of_two(1)   # [1, 2]
# p powers_of_two(4)   # [1, 2, 4, 8, 16]

#-------CoreWar Level8 -----No.30------------------------------------------------------

# def rock_paper_scissor(p1, p2)
#     data = ['rock','scissors','paper'] # [0,1,2]
#     result=[]
#     (0..2).each  do |x|
#     result[0]=x    if p1 == data[x]
#     result[1]=x    if p2 == data[x]     
#     end
#     # pp result
#     # P1 win = [0,1] / [1,2] / [2,0]
#     # P2 win = [1,0] / [2,1] / [0,2]
#     return "Draw!" if result[0]==result[1]
#     return "Player 1 won!" if result[0] < result[1] && result[1]!=2
#     return "Player 1 won!" if result[0]==2 && result[1]==0
#     return "Player 2 won!" if result[0] > result[1] && result[1]!=2
#     return "Player 2 won!" if result[0]==0 && result[1]==2
# end

# puts rock_paper_scissor('rock', 'scissors')      # 印出 Player 1 won!
# puts rock_paper_scissor('paper', 'rock')         # 印出 Player 1 won!
# puts rock_paper_scissor('paper', 'scissors')     # 印出 Player 2 won!
# puts rock_paper_scissor('rock', 'paper')         # 印出 Player 2 won!
# puts rock_paper_scissor('rock', 'rock')          # 印出 Draw!
# puts rock_paper_scissor('scissors', 'scissors')  # 印出 Draw!

#-------CoreWar Level8 -----No.31------------------------------------------------------
# last = 上次日期，today = 今天日期，cycle_length = 週期
# require'date'

# def is_period_late?(last, today, cycle_length)
       
#       delta=Date.parse(today)-Date.parse(last)
#     if delta > cycle_length
#       return true
#     else
#       return false
#     end
# end

# puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
# puts is_period_late?('2016/6/13', '2016/7/16', 28) # true
# puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
# puts is_period_late?('2016/6/13', '2016/6/29', 28) # false
# puts is_period_late?('2016/7/12', '2016/8/9', 28)  # false
# puts is_period_late?('2016/7/12', '2016/8/10', 28) # true
# puts is_period_late?('2016/7/1', '2016/8/1', 30)   # true
# puts is_period_late?('2016/6/1', '2016/6/30', 30)  # false
# puts is_period_late?('2016/1/1', '2016/1/31', 30)  # false
# puts is_period_late?('2016/1/1', '2016/2/1', 30)   # true

#---------------------------------------------------------------------------------------
