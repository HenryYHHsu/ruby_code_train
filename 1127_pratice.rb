
#------L7 001 -----------
# L7-001

# def find_shortest(str)
#     str=str.gsub(/ /,(','))
#     str=str.split(',').sort_by{|word| word.length}
#     str.first.length
# end

# RSpec.describe do
#     it "找出最短的字" do
#       expect(find_shortest("bitcoin take over the world maybe who knows perhaps")).to be 3
#       expect(find_shortest("turns out random test cases are easier than writing out basic ones")).to be 3
#       expect(find_shortest("lets talk about javascript the best language")).to be 3
#       expect(find_shortest("i want to travel the world writing code one day")).to be 1
#       expect(find_shortest("Lets all go on holiday somewhere very cold")).to be 2
#     end
# end

#------L7 002 -----------

# L7-002 選出及格(60 分以上)的科目

# def my_languages(scores)
#     scores.select{|name, scores| scores>=60}.keys
# end
# # my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})

#   RSpec.describe do
#     it "選出及格(60 分以上)的科目" do
#       expect(my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})).to eq ["Ruby", "Python"]
#       expect(my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})).to eq ["Hindi", "Dutch", "Greek"]
#       expect(my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})).to eq []
#     end
#   end

# L7-003 找出缺少的數字，例如 `[-3, -2, 1, 5]` 少了 -1、0、2、3、4 這幾個數字。

# def find_missing_numbers(array)
#      array_actual_size = (array.last - array.first)
#      result=[]
             
#      ((array.first)..(array.last)).each do |x|
#         result << x
#      end
#     pp result-array
# end
 
# find_missing_numbers([-3,-2,1,4])
# find_missing_numbers([-1,0,1,2,3,4])

# RSpec.describe do
#     it "找出缺少的數字" do
#       expect(find_missing_numbers([-3,-2,1,4])).to eq [-1,0,2,3]
#       expect(find_missing_numbers([-1,0,1,2,3,4])).to eq []
#       expect(find_missing_numbers([])).to eq []
#       expect(find_missing_numbers([0])).to eq []
#       expect(find_missing_numbers([-4,4])).to eq [-3,-2,-1,0,1,2,3]
#     end
# end


# L7-004 工廠的某台印表機只能印出 a 到 m 的字，請完成實作內容，把不應該出現的字算出來

# def printer_error(s)
#    s_select=s.gsub(/[n-z]/,'*').count("*")
#    s_length=s.size
#    # s=s.split('');
#    # s_select=s.select{|x| x=='0'}.length;
#    p "#{s_select}/#{s_length}"

# end

# printer_error("aaabbbbhaijjjm")
# printer_error("aaaxbbbbyyhwawiwjjjwwm")
# printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")

# RSpec.describe do
#  it "不該出現的字" do
#    expect(printer_error("aaabbbbhaijjjm")).to eq '0/14'
#    expect(printer_error("aaaxbbbbyyhwawiwjjjwwm")).to eq '8/22'
#    expect(printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")).to eq '3/56'
#  end
# end


# L7-005 一夥人去吃飯，大家先各自付帳，待後續再計算多退少補，請根據輸出結果完成以下實作。

# def split_the_bill(bill)
#     bill_sum=bill.values.sum;
#     bill_average=bill_sum/3.0;
#    p bill.transform_values!{|values| values-bill_average } # 利用transform_key/ transform_values 改變key
    
# end


# split_the_bill('A' => 20, 'B' => 15, 'C' => 10) 

#  RSpec.describe do
#    it "帳單計算" do
#      expect(split_the_bill('A' => 20, 'B' => 15, 'C' => 10)).to eq({'A' => 5.00, 'B' => 0.00, 'C' => -5.00})
#      expect(split_the_bill('A' => 40, 'B' => 25, 'X' => 10)).to eq({'A' => 15.00, 'B' => 0.00, 'X' => -15.00})
#    end
#  end

# L7-006 計算有幾個母音字母(a, e, i, o, u)

# def vowel_count(string)
#    result=string.gsub(/[aeiou]/, '*').count("*")
#    p result
# end

# # vowel_count("abracadabra") 

#  RSpec.describe do
#    it "計算有幾個母音字母" do
#      expect(vowel_count("abracadabra")).to be 5
#      expect(vowel_count("5xruby")).to be 1
#      expect(vowel_count("iloveyou")).to be 5
#    end
#  end

# L7-007 觀察輸出結果，實作相對應的程式

# def accum(s)
#     s=s.split(''); 
#     s=s.map.with_index {|i,x| (i*(x+1)).capitalize}.join('-') # 使用 with_index 可透過位置計算
#     p s
    
# end
# #  accum("ZpglnRxqenU")  # 'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
 
# RSpec.describe do
#    it "觀察輸出結果，實作相對應的程式" do
#      expect(accum("ZpglnRxqenU")).to eq 'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
#      expect(accum("NyffsGeyylB")).to eq 'N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb'
#      expect(accum("MjtkuBovqrU")).to eq 'M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu'
#      expect(accum("EvidjUnokmM")).to eq 'E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm'
#      expect(accum("HbideVbxncC")).to eq 'H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc'
#    end
#  end

# L7-008 找出中間的字

# def get_middle(string)
#    middle=((string.size)/2.0).ceil
   
#      if string.size.odd?
#         p string[middle-1]
#      else
#         p string[middle-1..middle]
#      end
# end
# # get_middle("test")
# # get_middle("testing")
# # get_middle("A")
# # get_middle("of")
# # get_middle("middle")

#  RSpec.describe do
#    it "找出中間的字" do
#      expect(get_middle("test")).to eq 'es'
#      expect(get_middle("testing")).to eq 't'
#      expect(get_middle("middle")).to eq 'dd'
#      expect(get_middle("A")).to eq 'A'
#      expect(get_middle("of")).to eq 'of'
#    end
#  end

# L7-009 這是個三角形嗎？

# def is_triangle?(a, b, c)
#     array=[a,b,c].sort
#     if (array[0]+array[1])>array[2]?
#       p 'true';
#     else
#       p 'false';
#     end
# end

# # is_triangle?(1,2,2)
# # is_triangle?(7,2,2)
#  RSpec.describe do
#    it "這是個三角形嗎？" do
#      expect(is_triangle?(1,2,2)).to be true
#      expect(is_triangle?(7,2,2)).to be false
#    end
#  end

# L7-010 幫信用卡號打馬賽克

# def maskify(card_number)
#     if card_number.length <=4 
#         p card_number
#     else
#         part2=card_number[(card_number.length-4)..(card_number.length-1)]
#         part1=card_number[0..(card_number.length-5)].gsub(/[0-9]/,('*'))
#         p part1.insert(-1, part2)
#     end
# end

# maskify('4556364607935616')
# maskify('1')
# maskify('11111')


#  RSpec.describe do
#     it "幫信用卡號打馬賽克" do
#       expect(maskify('4556364607935616')).to eq '############5616'
#       expect(maskify('1')).to eq '1'
#       expect(maskify('11111')).to eq '#1111'
#     end
#   end

# L7-011 檢查是否有照順序排？

# def is_sorted_and_how(arr)
#     arr_sort=arr.sort
#     arr_sort_descending=arr_sort.reverse

#    if arr_sort_descending ==arr
#      puts 'yes, ascending'
#    elsif arr_sort == arr
#     puts 'yes, descending'
#    else 
#     puts 'no'
#    end
# end

# is_sorted_and_how([1, 2])
# is_sorted_and_how([15, 7, 3, -8])
# is_sorted_and_how([4, 2, 30])


#   RSpec.describe do
#     it "檢查是否有照順序排？" do
#       expect(is_sorted_and_how([1, 2])).to eq 'yes, ascending'
#       expect(is_sorted_and_how([15, 7, 3, -8])).to eq 'yes, descending'
#       expect(is_sorted_and_how([4, 2, 30])).to eq 'no'
#     end
#   end


# L7-012 實作以下內容

# class Person
#      def initialize(name1,name2)
#        @name1=name1;
#        @name2=name2;
#      end
#      def greet
#         puts "Hello, #{@name1} #{@name2}!"
#      end
         
# end

# person = Person.new('Bob', 'Smith')
# person.greet



# RSpec.describe do
#   it "當個有禮貌的人" do
#     person = Person.new('Bob', 'Smith')
#     expect(person.greet).to eq 'Hello, Bob Smith!'
#   end
# end


# L7-013 實作以下內容

class Block
    def initialize (data)
      @width=data[0]
      @length=data[1];
      @height=data[2];
    end
    
    def width
      puts @width
    end

    def length
      puts @length
    end

    def volume
      volume=@width*@length*@height;
      puts volume
    end
     
    def surface_area
      surface_area=@width*@length*6
      puts surface_area
    end

end


cube = Block.new([2,2,2])
cube.width
cube.length
cube.volume
cube.surface_area


# RSpec.describe do
#   it "實作內容" do
#     cube = Block.new([2,2,2])

#     expect(cube.width).to be 2
#     expect(cube.length).to be 2
#     expect(cube.height).to be 2
#     expect(cube.volume).to be 8
#     expect(cube.surface_area).to be 24
#   end
# end

# L7-014 調整以下實作，讓程式可順利執行

def greet(my_name, your_name)
  "Hello #{your_name}, my name is #{my_name}"
end

RSpec.describe do
  it "打招呼！" do
    jack = Human.new("Jack")
    jill = Human.new("Jill")

    expect(jack.greet("Jill")).to eq "Hello Jill, my name is Jack"
    expect(jack.greet("Mary")).to eq "Hello Mary, my name is Jack"
    expect(jill.greet("Jack")).to eq "Hello Jack, my name is Jill"
    expect(jill.name).to eq 'Jill'
  end
end