class Solver
  def factorial(num)
    raise StandardError if num.negative?

    result = 1
    while num.positive?
      result *= num
      num -= 1
    end
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
