
def largest_number(nums)
     nums_size=nums.size
    #  nums_string=(nums.sort.join('')).size
    #  p nums_string
     answer=[];
    # test1=(nums[0].to_s+nums[1].to_s).to_i
    # test2=(nums[1].to_s+nums[0].to_s).to_i 

    # if test1 >= test2 
    #   answer[0]=test1
    # else
    #   answer[0]=test2
    # end

    # if nums_string > nums_size 
       for i in (1..(nums_size-1))
          compare_1=((nums[i-1].to_s)+(nums[i].to_s)).to_i
          compare_2=((nums[i].to_s)+(nums[i-1].to_s)).to_i
          p compare_1
          p compare_2
          if compare_1 >= compaer_2
                
          else 
            answer << compaer_2
          end   
       end
    # p answer
    # elsif  nums_size > 1
    # p (nums.sort.reverse).join('').to_s
    # else
    # p nums[0].to_s
    # end
end

# def largest_number(nums)
#   answer = nums.sort! do |a, b| 
#     b.to_s+a.to_s <=> a.to_s+b.to_s
#   end 
#   if answer[0] == 0
#        return "0"
#   end
#   #  p answer    
#    p answer.join('')
# end
# largest_number([3,30])
# largest_number([3,30,34,5,9])
largest_number([1,2,3,1])
largest_number([16,32,64,128,256,512])
# largest_number([1])
# Input: [3,30,34,5,9]
# Output: "9534330"
