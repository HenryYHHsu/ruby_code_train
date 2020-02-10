#---------CoreWar level8 --No.3------
# class String
#     def is_uppercase? # 這是一個存在String中的實體方法
#     #  a=self
#     #  b=self.upcase
#      if self==self.upcase
#       puts true
#      else
#       puts false
#      end
#     end
# end


# # puts "hEllO".upcase
# puts "c".is_uppercase?                       # false
# puts "C".is_uppercase?                       # true
# puts "hello I AM DONALD".is_uppercase?       # false
# puts "HELLO I AM DONALD".is_uppercase?       # true
# puts "ACSKLDFJSgSKLDFJSKLDFJ".is_uppercase?  # false
# puts "ACSKLDFJSGSKLDFJSKLDFJ".is_uppercase?  # true


#---------CoreWar level8 --No.4------
# def opposite(n)
#     puts n*(-1); # 真的這麼簡單嗎?

# end
  
# puts opposite(1)   # -1
# puts opposite(14)  # -14
# puts opposite(-34) # 34

#---------CoreWar level8 --No.5------
# def repeat_str(n, s)
#     puts s*n  
# end
  
#   repeat_str(6, "I")     # 印出 IIIIII
#   repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello

#----------CoreWar level8 --No.6------
# 找出離某個數字最近的平方數
# def nearest_sq(n)
#      squre_root= Math.sqrt(n)
#      squre_integer=squre_root.round
#      approximate=(squre_integer*squre_integer)
#      puts approximate
# end
  
#   puts nearest_sq(1)    # 1
#   puts nearest_sq(2)    # 1
#   puts nearest_sq(10)   # 9
#   puts nearest_sq(111)  # 121
#   puts nearest_sq(9999) # 10000

#-----------CoreWar level8 --No.7---------
# def monkey_count(n)
#     return [*1..n] # 必須知道*的重要性
# end
  
#   p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
#   p monkey_count(3)  # 印出 [1, 2, 3]
#   p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
#   p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#   p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]

#----------CoreWar level8 --No.8 ----------
# def count_sheep(num)
    
#     # (1..num).map do |x|
#     #     "#{x} sheep...".join
#     # end
#       (1..num).map{|x| "#{x} sheep..."}.join 
#     # 必須知道join的方法 Returns a string created by converting each element of the array to a string.

# end
  
# puts count_sheep(1)  # 印出 1 sheep...
# puts count_sheep(2)  # 印出 1 sheep...2 sheep...
# puts count_sheep(3)  # 印出 1 sheep...2 sheep...3 sheep...

#-----------CoreWar level8 --No.9 ------------------
def century(year)
    data = (year/1000)+1;
    puts " #{data}世紀"
end

puts century(1705)  # 18 世紀
puts century(1900)  # 19 世紀
puts century(1601)  # 17 世紀
puts century(2000)  # 20 世紀