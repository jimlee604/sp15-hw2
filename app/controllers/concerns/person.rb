class Person
  def initialize(name, age)
    @name = name
    @age = age.to_i
    @nickname = name[0,4]
  end
  
  def introduce
    return 'My name is ' + @name + ' and I am ' + @age.to_s + ' years old.'
  end
  
  def birthyear
    return 2015 - @age
  end
  
  def nickname
    return @nickname
  end
  
end
