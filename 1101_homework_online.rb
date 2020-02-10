#--------------------- Practice1---------------

# def calc_parking_fee(vehicle_type, parking_hour)
        
  
#     hour = parking_hour.ceil  # 不滿一小時以1小時計算，於是無條件四捨五入
    
#     if vehicle_type ==:car
#         fee = 40*hour  if hour <=2;
#         fee = 80+30*(hour-2) if hour >=2;
#         return fee if fee <= 500;
#         return 500 if fee >500;
#     else
#         puts "20"   
#     end  
# end

# puts calc_parking_fee(:motocycle, 2)  # 印出 20
# puts calc_parking_fee(:motocycle, 8)  # 印出 20

# puts calc_parking_fee(:car, 1.5)      # 印出 80
# puts calc_parking_fee(:car, 4)        # 印出 140
# puts calc_parking_fee(:car, 5.5)      # 印出 200
# puts calc_parking_fee(:car, 18)       # 印出 500
#-----------------------------------------------------------
#----reference code----------------

# def calc_parking_fee(vehicle_type, parking_hour)
    
#     # hour = parking_hour.ceil  # 不滿一小時以1小時計算，於是無條件四捨五入
#     parking_hour=parking_hour.ceil

#     case vehicle_type
#     when :motocycle
#         fee=20
#     when :car
#         if parking_hour<=2
#          fee=parking_hour*40;
#         else 
#          fee=80+(parking_hour-2)*30
#         end
#         if fee>=500
#          fee=500;
#         end
#     end
# end



#--------------Practice2---------------

class ATM 
    
    def initialize (money)
        @money=money
    end

    def withdraw (withdraw)
        @money=@money-withdraw;
        # @withdraw=withdraw
        
    end

    def deposit (deposit)
        @money=@money+deposit;
        # @deposit=deposit;
    end
    
    def balance 
        return @money;
    end
    # 可使用attr_reader :balance  
end

  
atm = ATM.new(10)
  
atm.withdraw(5)
puts atm.balance  # 印出 5
  
atm.deposit(10)
puts atm.balance  # 印出 15
#-----------------------------------------------------