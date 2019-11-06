hidden string a
hidden string b
hidden integer c
hidden integer d
hidden integer e
hidden integer f
hidden integer g
hidden integer h
hidden integer i
hidden integer j
hidden integer k
hidden integer suma
hidden integer reszta
integer pesel_with_error

a = mid(`PESEL`, 1, 1) 
b = mid(`PESEL`, 2, 1) 
c = mid(`PESEL`, 3, 1) 
d = mid(`PESEL`, 4, 1) 
e = mid(`PESEL`, 5, 1) 
f = mid(`PESEL`, 6, 1) 
g = mid(`PESEL`, 7, 1) 
h = mid(`PESEL`, 8, 1) 
i = mid(`PESEL`, 9, 1) 
j = mid(`PESEL`, 10, 1) 
k = mid(`PESEL`, 11, 1) 

suma = 9*a + 7*b + 3*c + 1*d + 9*e + 7*f + 3*g + 1*h + 9*i + 7*j
reszta = suma % 10

if (reszta != k)
	begin
		print('PESEL => '  & `PESEL`)
		print('reszta => ' & reszta)
		pesel_with_error = 1
	end
else
	begin
		pesel_with_error = 0
	end
