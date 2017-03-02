function Euler4()
	ThreeDigits = [100:999]
	Products = unique(reshape(ThreeDigits*ThreeDigits',1,length(ThreeDigits)^2))
	return maximum(filter(x -> dec(x)==dec(x)[end:-1:1], Products))
end

@time println(Euler4())