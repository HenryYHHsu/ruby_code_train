#

#ATM = 0;
#重構---------

# RSpec.describe ATM do
#     describe "存錢功能" do
#         it "可以存錢" do
#            puts 'hi'
#         end
#     end
# end

# RSpec.describe ATM do
#     describe "存錢功能" do
#         it "可以存錢" do
#             #AAA 3A原則
#             #Arrang / Act/Assert
#            atm = ATM.new(10)
#            atm.deposit(5)
#            expect(atm.blance).to be 15;
#            #expect(atm.blance).to (be(15));
#         end
#         it "不能存<=0的錢" do
#             atm = ATM.new(10)
#             atm.deposit(-5)
#             expect(atm.blance).to be 10; 

#         end
#     end
# end
require './1108_atm'
RSpec.describe ATM do
    describe "領錢功能" do
        let (:atm){ATM.new(10)}
        it "可以領錢" do
            #AAA 3A原則
            #Arrang / Act/Assert
        #    atm = ATM.new(10)
           atm.withdraw(5)
           expect(atm.blance).to be 5;
           #expect(atm.blance).to (be(15));
        end
        it "不能存<=0的錢" do
            # atm = ATM.new(10)
            amount=atm.withdraw(-5)
            # expect(amount).to be 5
            expect(atm.blance).to be 10; 

        end
        it "不能領超過餘額" do
            # atm = ATM.new(10)
            amount=atm.withdraw(15)
            expect(amount).to be 0
            expect(atm.blance).to be 10; 

        end
    end
end