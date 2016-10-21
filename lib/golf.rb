class Golf

  def self.hole1(a)
    a.reduce :*
  end

  def self.hole2
    ("a".."z").to_a
  end

  def self.hole3(i)
    hole1(1..i)
  end

  def self.hole4(a)
    a.map { |t| t.split /\(|\)/ }.map do |t, n|
      case t[0]
      when "m" then "hat(man(#{n}))"
      when "d" then "dog(#{n}(bone))"
      when "c" then "dead(#{n})"
      end
    end
  end

  def self.hole5(a)
    n = []
    (0..(a.size-1)).each { |l|
      (0..(3-l)).each { |i|
        n << a[i..(i+l)]
      }
    }
    n
  end
end
