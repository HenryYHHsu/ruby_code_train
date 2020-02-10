
#----practice1 -------
#------Henry----------
# a="*" 
# for i in 1..5 
#     puts a*i  
# end
#----solution2---------------
# i.upto(5) do |n|
#      puts "*"*n
# end

#----pracitce2---------

# def is_leap_year?(y) # ?回傳布林函數 ture or false
#    if y % 4 == 0 && y % 100 !=0 || y% 400 ==0  # check 閏年計算公式
#     return true
#    else
#     return false
#    end
# end
  
#   puts is_leap_year?(1998)  # 印出 false
#   puts is_leap_year?(2000)  # 印出 true
#   puts is_leap_year?(2100)  # 印出 false

 
# ----practice3-------------
# -----Henry_answer---------
def bmi_calculator(height, weight)
       a =height/100.0
       b = (weight/(a*a)).round(1) #取小數點下第幾位，並4捨5入
    #  c = (b*100).floor
       #d = ((c/10.to_f).round)/10.to_f
  end
  
  puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
  puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)

#------finish--------------



#把陣列 [1, 3, 4, 1, 7, nil, 7] 由小到大排序，並且移除 nil 以及重複的數字。
# a=[1,3,4,1,7,nil,7].compact;
# a=a.sort;
# a=a.uniq;
# p a;


#-------------------------------------------------------------------------


#計算 1 ~ 100 之間所有單數的總和
#  t=0
# for i in 1..100
#      if i.odd?
#      t=t+i;
#      end  
# end
# p t ;
#-----------------------------

# p (1..100).select{|x| x.odd?}.sum  


# Henry=:name;
# K=2;
# Ruby ="Ruby";
# p :name.object_id;
# p :name.object_id;
# p :name.object_id;

# puts "Ruby".object_id;
# puts "Ruby".object_id;
# puts "Ruby".object_id;


# def my_select(list)
#     result=[]
#     list.each do |n|
#     result << n if yield(n)
#     end
#     result
# end

# p my_select([1,2,3,4,5]){|i| i.odd?}

#----土炮式寫法--list-----#

# test = Proc.new{|n| n+2}

# p test.call(3)

#---------------
# class Animal

#  def eat
#  end
#  def walk
#  end
# end

# class Dog <Animal
# end
# class Cat <Animal
# end

# kitty=Cat.new
# kitty.eat
# kitty.walk

# lucky=Dog.new
# lucky.eat
# lucky.walk
