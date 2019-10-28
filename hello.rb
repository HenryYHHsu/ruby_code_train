#puts ("Hello world");
#puts ("Hello, World") # lin2 equal lin3
#puts "Hell, World"

#print "Hello, world\n"; # 不會換行
#puts "Hello, world" #自動換行
#p "Hello, world" # 雙引號直接帶出

# x=2
# y=3
# tmp=x
# x=y
# y=tmp

# puts x_change = x 
# puts y_change = tmp

# def somthing
#     do_somthing
# end

# name = "MOMO"
# age = 20            

# puts %Q(hi, I am #{name}, and I am #{age} years old)
# puts %q(hi, I am #{name}, and I am #{age} years old)    
# puts %Q(Mother's book said : "come here!")
# puts %q(Mother's book said : "come here!") 


# a =10
# b ="10"

# puts a == b
# puts a === b

#def bmi_calculator(height,weight)
    begin
      a = weight
     # b = weight/(height.to_f) 
     
      p a
      p b
     
    rescue
        "輸入數字有問題"
    end
#end

#puts bmi_calculator(120,80)

# def c2f(x)
#     return y=9/5*x+32
# end

# puts c2f(30)


A = [1,2,3,4,5]

#p [1,2,3,4,5].map { |x| x*2-1}
#puts A.map { |x| x*2-1}


#p (1..100).select{|x| x.odd?};
#p (1..100).select{|x| x.even?}
#p (1..100).sum
#p (1..52).to_a.shuffle.first(5)
#p (1..52).to_a.sample(5)


#name = :name
#name = 2

#puts :name

profile ={ name:'Henry', age:'30'}

# p profile
# p profile.keys
# p profile.values
# p profile[:name]
# p profile[:age]

def is_adult?(age)
     age>=18
end

p is_adult?(17)
