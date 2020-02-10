
# class Cat
#     def initialize(name)
#         @name = name
#     end

#     #getter
#     def name (name)
#         return @name;
#     end

#     #setter
#     def name=(new_name)
#         @name=new_name;
#     end
# end

# kitty = Cat.new('kitty')
# puts kitty.name # 會印出什什麼？


# kitty.name = 'nancy'
# kitty.name='nancy'
# kitty.name=('nancy')
# p kitty.name=('nancy')

#--------------------------------

# class Cat
#     #attr_reader :age #getter
#     #attr_writer :age #setter
#     attr_accessor :age #getter_setter
# end

# kitty=Cat.new
# kitty.age=30
# p kitty.age

#---------------------------------
# class Animal
#     def self.has_many(something)
#         p something
#     end
# end
# class Cat<Animal
     
#     has_many :foods #類別方法
# end

#----Applicaiton for open clasee---------------------
# class String
#     def say_hello
#         puts "hi"
#     end
# end

# class Integer
#     def days
#          "#{self} days"
#     end
# end

# "ddd".say_hello

# puts 3.days
# puts 5.days

# class Integer
#     #alias :old_plus :+
#     alias_method :old_plus, :+
#     def +(n)
#     puts "hey hey"
#     self.old_plus(n)
#     end
# end

# puts 1+2
# puts 3+4

# class Cat 
#    def say_hello
#        gossip # 可在公開方法呼叫私有方法 # Ruby2.7 之後可加self.xxxxx
#    end
  
#    private
#    def gossip
#    end
# end

# kitty =Cat.new
# kitty.say_hello
# kitty.gossip

#--------------------------------

# class Cat 
#     def say_hello
#         self.gossip # protected
#     end
   
#     protected
#     def gossip
#     end
#  end
 
#  kitty =Cat.new
#  kitty.say_hello
#  kitty.gossip


# class Cat 
   
#     private
#     def gossip
#     end
#  end
 
#  kitty =Cat.new
# # kitty.say_hello
# # kitty.gossip
# kitty.send(:gossip) # 透過send 將prviate 功能內容功能取出
# kitty.send(:send,:gossip)


# module Flyable
#     def Fly
#     puts "fly!"
#     end
# end

# #使用module是可以共用

# class Animal
# end

# class Bird < Animal
#     include Flyable #利用include 將module加入class類別之中 -- 實體方法 (引入))
#     #extend  Flyable # 類別方法 (擴充)
# end

# kitty = Bird.new
# kitty.Fly

#-----------------------------------------------------

# module A
#     class Cat
#     end
# end

# module B
#     class Cat
#     end
# end

# kitty = A::Cat.new # A:: excess location
# nancy = B::Cat.new # B:: excess location

#------------------------------------------------------
# require 'sinatra'
# require "sinatra/reloader"  #if development?

# get '/' do
#     "Hello, sinatra"
# end

# get '/abc.php' do
#     "This is not PHP QQ"
# end

#--------------------------------------------------
# require 'sinatra'
# require "sinatra/reloader"  #if development?

# get '/cats' do
#     "Hello, sinatra"
# end

# get '/cats/:id' do 
#     #進資料庫查資料    
#     # "Your #{params[:id]}cat"
#     "Your #{params['id']}cat"
# end
