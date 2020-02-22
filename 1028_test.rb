

# for a in names
#     puts a
# end


x=0
# while x<10
#     puts x
#     x+=1 # condition
# end

i=0
# loop do
#  puts i
#  i += 1
#  break if i >10 #condition
# end 


# 5.times do
#  puts "Hello"
# end 


# 10.downto(1){|i| puts i }
# 1.upto(10) {|i| puts "Hello, #{i}"};
names = ["Henry","Andy","Joe","Chris"]
# names.each do |name|
#     puts name
# end

# names.each do |name|
#     puts "#{x} #{name}"
#     x +=1
# end 



# names.each.with_index do |name, x|
#     puts "#{x} #{name}"
# end


# for i in 1..100
    
#     i = (2*i)-1 ;
#     puts i
    
# end

# for i in 1..100
#     if i%2 == 1
#     end

# for i in 1..100
#     puts i if i.odd?
# end

#p (1..100).reduce{|t,i| t+i}

#p (1..100).to_a.sum

# test1
# test=[1,2,3,4,5]
# p test.map{|x| 2*x-1}


#test2
# test2=[1,3,4,1,7,nil,7]
# test3=test2.compact # delete nil 
# test4=test3.sort # 進行排序
# test5=test4.uniq # 移除重複值

# p test3
# p test4
# p test5

# y = test2.length
# test3=test2[0..y-2]
# p test3

# for i in test2[i]
#     result << i if i>0
# end
# p result

#test3

# Hash practice important
# a=[1,2,3,1,2,1,3,1,2,3,4,5,6]

# result=Hash.new(0)
# a.each do |i|
#     result[i] += 1
# end
# p result

#--------回傳值練習---------------

#def hello
#     puts "hi"
#     return 100

# end

# p hello
#----
# def doubleA(num)
#     puts num*2
# end

# p doubleA(5)

#-------------------------------------

#-----問號與驚嘆號--------------

# def is_adult?(age)
#     age>=18
# end

# p is_adult?(15)

#----------------------------

# list = [9,5,2,7]
# p list.sort
# p list 
# p list.sort!
# p list 

#-----------------------------

