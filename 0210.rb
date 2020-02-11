# yield + block
class IronmanDairy
    def initialize(topic)
        @topic =topic
    end
    def get_topic
        yield(@topic)
    end
end

day19 = IronmanDairy.new("Yield")

day19.get_topic do |topic|
    puts "We are going to talk about #{topic} today!"
end

# yield + block:字串方法 :

topic_swapcase = ""
day19.get_topic do |topic|
    topic_swapcase = topic.swapcase # 大小寫轉換
end

puts "We are going to talk about #{topic_swapcase} today!"

# yield + block: 陣列方法:
spring = ["September","October","November"]

def spring_month (array, start=1)
    counter = start
    array.each do |item|
        # puts "#{counter} #{item}"
        puts "#{ yield counter} #{item}"

        counter =counter.next
    end
end 

spring_month(spring, 9) do |mth|
    "#{mth}."
end


# 說明Ruby中Enumerable的實用之處

season = ["Spring","Summer","Autumn","Winter"]
p season.each
p season.select {|s|s.include? 'S'}
p season.select {|s|s.include? 't'}
p season.select {|s|s.match(/^*u/)}
p season.select{|s| s[/^*u/]}
p season.grep(/^Su/)

# enumberable 結合 yield
# class Winter
#     include Enumerable #包含Enumerable Module
#     def initialize
#         @month = %w[December January Fabruary]
#     end
#     def each
#         for month in @month do
#             yield month
#         end
#     end
# end

# p Winter.new.map {|mth| mth.upcase}

# nil verify
xfactor = nil
print "xfactor :" 
puts xfactor == ""
print "xfactor to string : "
puts xfactor.to_s == ""

# && 的優先權高於 = 
# IronmanDairy = 22
p (IronmanDairy = 22) && (IronmanDairy % 2 == 0)
p  Class === Class
p  Object === Object

# equal? 與 eql? 與 ==比較
ruby = "awesome"
rails = "awesome"

p ruby == rails
p ruby.eql? rails
p ruby.equal? rails
p ruby.object_id
p rails.object_id

# nil? empty? 和 blank? present? 比較

# p true.empty?
# p false.empty?
# p nil.empty?


# presence ()
# state   = params[:state]   if params[:state].present?
# country = params[:country] if params[:country].present?
# region  = state || country || 'US'

# def presence
#     self if present?
# end
# params[:something] if params[:something].present?
# params[:something].presence 

# params[:something]== ''
# [].presence

p Class.instance_methods - Module.instance_methods