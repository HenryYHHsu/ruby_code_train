
# hash : 用 << 指定值
hsh_array =  Hash.new([])
p hsh_array
hsh_array[:a] << 'This is sybmol a'
hsh_array[:b] << 'This is sybmol b'

# hash, block 與 <<
hsh_block = Hash.new {|h,k| h[k]=[]}
p hsh_block[:a] << 'This is symbol a'
p hsh_block[:b] << 'This is symbol b'
p hsh_block[:z]
p hsh_block

# hash: 用+=改變值
hsh_plus = Hash.new([])
p hsh_plus
p hsh_plus[:a] += ['This is symbol a']
p hsh_plus[:b] += ['This is symbol b']
p hsh_plus[:z]
p hsh_plus

# hash: 用+=與freeze?固定值
hsh_freeze = Hash.new([].freeze)
p hsh_freeze[:a] += ['This is symbol a']
p hsh_freeze[:b] += ['This is symbol b']
p hsh_freeze[:z]
p hsh_freeze

#  *single splat 和 **double splate 比較

def splat(a, *b, **c)
    [a,b,c]
end

p splat 0
p splat 0,1
p splat 0,1,2 # *single splat在array裡: 代表其他未被指定的值，所以把2也搶進來，變成array[1, 2]
p splat 0,1,2,d:3,e:4
p splat 0,d:3,e:4

# ** double splat code
def airport(city:, **iatacode)
    p city, iatacode
  end
  
  airport city: 'Osaka', code: :KIX
  airport city: 'Sydney', code: :SYD
  airport city: 'Cairns', code: :CNS
  airport city: 'Taipei', code: :TPE
  airport city: 'Love', code: :IOU

# tap method
#   class Ironman
#     attr_accessor :name
#     def self.create_ironman 
#         # ironman = Ironman.new
#         # ironman.name ="Henry"
#         # ironman
#         Ironman.new.tap do |i|
#          i.name = "Henry"
#         end
#     end
#   end

#   ironman = Ironman.create_ironman
#   puts ironman.inspect

(1..5).tap {|x| puts "element: #{x.inspect}"}.to_a
      .tap {|x| puts "array : #{x.inspect}"}
      .select {|x| x%2==0}
      .tap {|x| puts "evens : #{x.inspect}"}
      .map {|x| x*x}
      .tap {|x| puts "squares: #{x.inspect}"}


test1=[1,2,3,4,5]
p '-------------------------'
p test1.map{|x| 3*x-1}      


def call_proc(my_proc)
  count = 500
  my_proc.call
end
count   = 1
my_proc = Proc.new { puts count }
p call_proc(my_proc)