# def proc_running
#     Proc.new
# end


# proc = proc_running {"I Love runnung! "}
# p proc.call 

# def count_km(km)
#     return Proc.new {|n| n*km}
# end

# full_marathon = count_km(42)
# half_marathon = count_km(21)

# p "I've run #{half_marathon.call(7)} km in Half Marathon and #{full_marathon.call(3)} Km in Matathon"

# km_proc = Proc.new {|km, *n| n.collect{|n| n*km}}
# p km_proc.call(42,1,3)
# p km_proc.call(21,1,7)


# def proc_run
#     proc = Proc.new {return}
#     proc.call
#     p "Run with Proc!"
# end
# proc_run

# def lambda_run
#     lam = -> {return}
#     lam.call
#     p "Run with lambda!"
# end
# lambda_run


# class IronmanDairy
#     def title=(title) #write dairy
#       @title = title
#     end
  
#     def title #read dairy
#       @title
#     end
# end

# day12 = IronmanDairy.new
# day12.title= "Don't tell u"
# p day12
# p day12.title

class IronmanDairy
    # def title=(title) #write dairy
    #   @title = title
    # end
  
    # def title #read dairy
    #   @title
    # end
    attr_accessor :title
end

# day12 = IronmanDairy.new
# day12.title= "Don't tell u"
# p day12
# p day12.title


# attr_accessor 
# class RunMatathon
#     attr_accessor :km
# end

# hm = RunMatathon.new
# hm.km =21 

# fm = RunMatathon.new
# fm.km =42

# p hm
# p fm
# p hm.instance_eval {@km}
# p fm.instance_eval {@km}
# p RunMatathon.instance_methods(false)


# initialize()

# class RunMatathon
#     def initialize(km)
#         @km = km
#     end

#     # def km
#     #     @km
#     # end
# end

# RunMatathon.class_eval do #放RunMarathon類別的外面!定義新的類別方法
#     def km
#         @km  #這個是類別實體變數!!!
#     end
# end

# hm =RunMatathon.new(21)
# fm =RunMatathon.new(42)

# p hm
# p fm
# p hm.km
# p fm.km
# p hm.instance_eval{@km}
# p fm.instance_eval{@km}

# p RunMatathon.instance_methods(false)

# each, map, collect --> Array & Hash

# account = {"NAB" => 100, "CAN" => 200, "WEST" => 300}
# mymoney = 0 ;
# # account.each {|bankname,saving| mymoney += saving} 
# # account.each {|bank| mymoney += bank[1]; pp bank}
# # account.collect {|bank| mymoney += bank[1]; pp bank} 
# account.map {|bank| mymoney += bank[1]; pp bank}

# hash = { "NAB" => ["Cash", "Gold"], "CAN" => ["Bitcoin", "Litecoin", "Ethereum"] }
# # puts "My Money: $" + mymoney.to_s
# p hash.map {|n| n}
# p hash.map {|bank, account_array| account_array.map {|sub_account| "#{bank}: #{sub_account}" } }.join(", ")

# alias  ----------------------------------------------

# class Pet
#     def first_name
#         p "Poker"
#     end
#     def second_name
#         p "Chris"
#     end
#     # alias name first_name
#     #  alias_method :name, :first_name
#     def self.nickname
#         # alias_method :name, :first_name
#         alias name second_name
#     end
# end

# # Pet.new.name

# class Cat < Pet
#     def first_name
#         p "Pokerface"
#     end
#     def second_name
#         p "Chrisface"
#     end
#    nickname
# end

# Cat.new.name

# Iterator ------------------------------------------

# .each 
# (1...4).each do |i|
#     puts "加油 Henry"
# end

# (1..4).each do |i|
#     puts "加油 Henry"
# end

# 字串疊代器 Each_line
"[成為工程師]\n專心！\n堅持！\n一定可以\n成功的喔！".each_line do |line|
    puts line
end

# 字元疊代器 each_byte iterator
# "You can do it".each_byte do  |c|
#   printf "%c ", c
# end

# step
# 2.step(16, 2) do |i|
#     puts i
# end #印出2-16之間的偶數 2 4 6 8 10 12 14 16

# 16.step(2, -2) do |i|
#     puts i
# end #印出16-2之間的偶數 16 14 12 10 8 6 4 2

# while
i =1 #記得設定初始值
while (i <= 16) do
  if (i%2 == 0)
    # puts i
  end
  i +=1
end  #印出2-16之間的偶數 2 4 6 8 10 12 14 16

# until
i =1 
until i>16
    if (i%2 == 0)
        # puts i
      end  
      i += 1
end

# for loop

for i in 1..16
    if (i%2 == 0)
        # puts i
    end
end

a = [2,4,6,8]
p a.each {|x| x*2}

i =0 
while (i < a.length)
    # p (a[i]*2).to_s + ""
    print (a[i]*2).to_s + " "
    i +=1
end
print "\n"