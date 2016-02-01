class PrimeFactors

	def generate(x)

		z = Array.new
		i = 2

		while x > 1
    		while x % i == 0
	    		z.push i
		    	x /= i
		    end
		i += 1
	    end

		if x > 1
			z.push x
		end

		return z
	end

end