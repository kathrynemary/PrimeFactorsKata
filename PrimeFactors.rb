class PrimeFactors
    
    def initialize(int)
    	@int = int
    end

    require 'prime'
    def factor
    	@x = @int.prime_division
        return @x.flatten
    end

end
