import Func

n = 33 * 1024
a = Matrex.ones(1, n)
b = Matrex.ones(1, n)

{a, b} = fill_array(a, b, 0, n)

c = Matrex.dot_nt(a, b)
IO.inspect(c)

#resultado elixir: 12861782884352




#método 2: soma dos quadrados na gpu de forma "direta"
#método de cálculo "real", "força bruta", mas que tem o mesmo número de operações
#vetor a: 0, 1, 2, 3, 4, ... N-1
#b = a
#cálculo: dot product entre a e b (ou a²)
#resultado elixir:      12861782884352
#resultado cuda:        12861780787200
#resultado F-estima:    12861782365696
#resultado cpu C:       12861789175808




#método 1: estimativa de soma de quadrados:
#fazendo estimativa: 
#vetor a: 0, 1, 2, 3, 4, ... N-1
#vetor b: 0, 2, 4, 6, 8, ... (N-1)*2
#o dot_product entre a e b é estimado como a dobro da soma dos produtos
#resultado elixir: 25725849567232 (ta errado)
#resultado elixir: 25721281970176 (arrumado 1)
#resultado elixir: 25723565768704 (arrumado 2)
#resultado Ccuda:  25723561574400
#resultado float:  25723565768704 (funcao de estimação, float)
#resultado double: 25723564731392 (funcao de estimação, double)

