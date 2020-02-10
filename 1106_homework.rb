#----------------------006-1--------
# def calc_sum(param)
#    type=param.class
#    puts param.sum if type==Array;
#    puts  param if type==Integer;
#    puts 0 if type==NilClass;
# end
#   puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
#   puts calc_sum(5)                # 印出 5
#   puts calc_sum(nil)              # 印出 0
# #-------------006-2--------------------
  # 印出 Hello, Kitty

# class String
#     def greeting!
#     "Hello, #{self.capitalize}" 
#     end
# end

class String
   def greeting!
    puts "Hello, #{self.capitalize}"
   end
end

# "XXXXXX"為內建字串類別
# "kitty"=Cat.new('Hello ,Kitty')
puts "kitty".greeting!