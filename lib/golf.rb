class Golf

  def self.hole1(a)
    a.reduce 1, :*
  end

  def self.hole2
    ("a".."z").to_a
  end

  def self.hole3(i)
    hole1(1..i)
  end

  def self.hole4(a)
    a.map { |t| t.split /\(|\)/ }.map do |t, n|
      case t
      when "man" then "hat(man(#{n}))"
      when "dog" then "dog(#{n}(bone))"
      when "cat" then "dead(#{n})"
      end
    end
  end

  def self.hole5
  end
end
