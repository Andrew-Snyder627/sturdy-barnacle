class Player
    attr_reader :full_name, :monthly_cost, :contract_length

    def initialize(full_name, monthly_cost, contract_length)
        @full_name = full_name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
    end

    def first_name
        full_name.split(" ",2).first
    end

    def last_name
        full_name.split(" ", 2).last
    end

    def total_cost
        @monthly_cost * @contract_length
    end
end