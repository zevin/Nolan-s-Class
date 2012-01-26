class Integer
  def factorial_iterative
    f = 1; for i in 1..self; f *= i; end; f
  end
  alias :factorial :factorial_iterative
end