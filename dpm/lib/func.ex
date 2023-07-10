defmodule Func do
    def fill_array(a, b, n, n) do 
        {a, b}
    end


    def fill_array(a, b, i, n) do
        fill_array(Matrex.set(a, 1, i + 1, i), Matrex.set(b, 1, i + 1, i), i+1, n)
    end
    
  end
  