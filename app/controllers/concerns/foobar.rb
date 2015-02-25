class Foobar
  def self.baz(args)
    sum = 0
    seen = []
    for x in args
      if seen.include? x
        next
      end
      seen.push(x)
      x = x.to_i + 2
      if (x % 2 == 1 or x > 10)
        next
      end
      sum += x
    end
    return sum
  end

end
