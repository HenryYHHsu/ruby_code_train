def two_sum(numbers, target)
    numbers_size=numbers.size
    
end


# def two_sum(numbers, target)
#     numbers_size=numbers.size;
#     index_matrix=[];
#     data_matrix=[];
#     answer=[]
#     # result[0]=0;
#     # result[1]=0;
#     index_1=[]
#     for i in (0..(numbers_size-1))
#         delta=target-numbers[i];
#         # puts delta
#         for j in (1..(numbers_size-1))
#            if numbers[j]==delta && j>i 
#              answer << i+1
#              answer << j+1
#              break
#            end
#         end
#         answer_size=answer.size
#         if answer_size ==2
#             # p answer
#             break
#         else
#         end    

      
#     end
#     p answer
# end

two_sum([2,7,11,15],9)
two_sum([2,3,4],6)
two_sum([2,7,11,15],26)
two_sum([-1,0],-1)
two_sum([-3,3,4,90],0)
two_sum([0,0,0,0,0,0,3,4],0)
# two_sum([-3,-3,-3,0,0,0,3,4],0)
two_sum([-2,-7,11,15],4)
# Output: [1,2]
# Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.