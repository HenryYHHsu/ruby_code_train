# puts (1..8).reduce(:+)
# puts (1..8).reduce { |sum, num| sum += num }
# puts (1..8).reduce(0) { |sum, num| sum += num }


# ['foo', 'bar', 'blah'].map { |e| e.upcase }
block = proc { |e| e.upcase }
block.call("foo") # => "FOO"
puts ['foo', 'bar', 'blah'].map(&block)

some_object = Object.new
def some_object.to_proc
    proc {|e| e.upcase}
end

pp ['foo', 'bar', 'blah'].map(&some_object)
puts "--------------------------------------"
# :whatever.to_proc  => proc {|e| e.whatever}
pp ['foo', 'bar', 'blah'].map(&:upcase)

puts [1,2,3].inject(&:+)

