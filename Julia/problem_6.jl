function Euler6(N::Int64)
	
	println( div(N*(N+1)*(3*N+2)*(N-1),12))
	
end

@time Euler6(100)