function GCD(a::Int64,b::Int64)
	
	while !(mod(a,b) == 0)
		
		c = mod(a,b);
		a = b;
		b = c;
	end
	return b
end

function LCM(a::Int64, b::Int64)
	return div(a*b,GCD(a,b))
end

function LCMMulti(N::Array{Int64,1})
	return reduce(LCM, N)
end

function Euler5()
	println(LCMMulti([1:20]))
end

@time Euler5()