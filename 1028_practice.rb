
#----practice1 -------
#------Henry----------
#a="*" 
# for i in 1..5 
#     puts a*i  
# end
#----solution2---------------
i.upto(5) do |n|
     puts "*"*n
end

#----pracitce2---------

# def is_leap_year?(y) # ?回傳布林函數 ture or false
#     y % 4 == 0 && y % 100 !=0 || y% 400 ==0  # check 閏年計算公式
#     return true
# end
  
#   puts is_leap_year?(1998)  # 印出 false
#   puts is_leap_year?(2000)  # 印出 true
#   puts is_leap_year?(2100)  # 印出 false

 
# ----practice3-------------
# -----Henry_answer---------
def bmi_calculator(height, weight)
       a =height/100.0
       b = weight/(a*a).round(1) #取小數點下第幾位，並4捨5入
       #c = (b*100).floor 
       #d = ((c/10.to_f).round)/10.to_f
  end
  
  puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
  puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)

#------finish--------------
