# #----codewrar level8
# def count_by(x, n)
#      1.upto(n) do |n|
#       p   x*n
#     end
# end
 

# p count_by(1, 5)    # [1, 2, 3, 4, 5]
# p count_by(2, 5)    # [2, 4, 6, 8, 10]
# p count_by(3, 5)    # [3, 6, 9, 12, 15]
# p count_by(50, 5)   # [50, 100, 150, 200, 250]
# p count_by(100, 5)  # [100, 200, 300, 400, 500]

#--把 "a" 字串換成 1，"b" 字串換成 2，不是英文字母的話就無視它，依此類推。請完成以下實作內容：--------------------
def alphabet_position(text)
    #text1=text.gsub(' ','')
    text=text.gsub(/\W/,'') # regular expression
    text=text.downcase; # 將所有字母傳換成小寫
    # text=text.split('')
    # text=text.map{|m| (m.ord-96).to_i} # or user bytes
    text=text.bytes.map{|x| (x-96)}.join''
    
end
  
p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串
  
p alphabet_position("-.-'")
# 印出 "" 空字串