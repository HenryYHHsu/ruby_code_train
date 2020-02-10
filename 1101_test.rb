# def bmi_calculator(height, weight)
#        a =height/100.0
#        b = (weight/(a*a)).round(1) #取小數點下第幾位，並4捨5入
#        #c = (b*100).floor 
#        #d = ((c/10.to_f).round)/10.to_f
#        return b 
#   end

# p bmi_calculator(180,80)


# def say_hello
#     yield #控制權移轉#
#     puts "hi"
# end

# say_hello {puts "hey"}



# def say_hello
#     result =yield 123 #控制權移轉#
#     puts "hi"
#     puts result
# end

# say_hello {|x| x*3}


# def my_map(list)
#     result=[]
#     list.each do |i|
#     result.<< yield  i
#     end
#     result
# end

# p my_map([1,2,3]){|n| n*2}


# def task (hash)
#     puts hash
#     if block_given?
#     yield
#     end
# end

# task ({:default => :hello})

# namespace :db do
#     desc "test 123"
#     task :hello do
#     puts "migration!"
#     end
# end


# list = [1,2,3,4,5]
# p list.map {|x| x*2}
# p (list.map {|x| x*2})
# p (list.map do |x| x*2 end


# class Cat
#     def eat(food)
#     puts "#{food} is good"
# end
# end

# kitty=Cat.new
# kitty.eat('fish');
# poker=Cat.new
# poker.eat('fruit');

#-------------------------------------
# class Animal

#     def eat (animal)
#         puts " #{animal} eat !"
#     end
#     def walk (animal)
#         puts " #{animal} walk !"
#     end
# end
   
#    class Dog <Animal
#    end
#    class Cat <Animal
#    end
   
#    kitty=Cat.new
#    kitty.eat(1)
#    kitty.walk(1)
   
#    lucky=Dog.new
#    lucky.eat(2)
#    lucky.walk(2)
#----------------------------------------
#   class Animal

#     def initialize
#         puts " eat !"
#     end
#     # def walk (animal)
#     #     puts " #{animal} walk !"
#     # end
# end
   
#    class Cat
#     def initialize
#         puts " eat !"
#         end
#    end
   
#    kitty=Cat.new

# class Object
#     def initialize
# end
class Cat # 初始繼承 Object (無引數)))
    def initialize(name,age)
        @name=name # @ 表示實體變數
        @age=age
    end
    def greeting
        puts "I am #{@name} and I am #{@age} years old"
    end
end
test=Cat.new('test',23)
test.greeting