class Player
    attr_reader :full_name, :monthly_cost, :contract_length

    def initialize(full_name, monthly_cost, contract_length)
        @full_name = full_name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = nil
    end

    def first_name #splitting first name out of full name
        full_name.split(" ",2).first
    end

    def last_name #splitting last name out of full name
        full_name.split(" ", 2).last
    end

    def total_cost #monthly cost multiplied by contract length (length in months per the README)
        @monthly_cost * @contract_length
    end

    def nickname #returns the nickname if it is set, nil otherwise. Do I need this? Curious if setting it above is doing this anyway
        @nickname
    end

    def set_nickname!(nickname) #sets the nickname if given one
        @nickname = nickname
    end
end