function Primes(N::Int64)

	isprime = ones(Bool,N)
	
	for i = 2:int64(sqrt(N))
		if isprime[i]
			for j in (i*i):i:N
				isprime[j] = false
			end
		end
	end
	return filter(x -> isprime[x], 2:N)
end

function Euler10(N::Int64)
	println(sum(Primes(N)))
end

@time Euler10(2000000)