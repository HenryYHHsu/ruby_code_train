class ATM
    attr_reader :blance;

    def  initialize(amount)
        @blance=amount;
    end
    def deposit(amount)
        if amount>0
        @blance=@blance+amount;
        # @blance+=amount
        end
    end
    def withdraw(amount)
        # if (amount>0) && (@blance >= amount)
        if (amount>0) && (@blance >= amount)
        # if amount>0 && enough?(amount)
        @blance=@blance-amount;
        # return amount;
        else
            return 0
        end

    end
    # def blance
    #     @blance;
    # end
end