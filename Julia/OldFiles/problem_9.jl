function Euler9()
	
	for a in (1:1000)
		for b in (a:1000)
		
			cc = a^2+b^2
			if mod(cc,sqrt(cc))==0
				if a + b + sqrt(cc) == 1000
					println(int(a*b*sqrt(cc)))
					break
				end  
			end
		end
	end
	
end

@time Euler9()