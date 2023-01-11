class Integer
  def factor_of?(other)
    other % self == 0
  end

  def proper_divisors
    _rust_proper_divisors(self)
  end

  def aliquot_sum
    _rust_aliquot_sum(self)
  end

  def aliquot_classification
    as = aliquot_sum

    if as == self - 1
      :almost_perfect
    elsif as < self
      :deficient
    elsif as == self
      :perfect
    elsif as == self + 1
      :quasiperfect
    elsif as > self
      :abundant
    end
  end

  def perfect?
    aliquot_classification == :perfect
  end

  def deficient?
    [:almost_perfect, :deficient].include? aliquot_classification
  end

  def almost_perfect?
    aliquot_classification == :almost_perfect
  end

  def abundant?
    [:quasiperfect, :abundant].include? aliquot_classification
  end

  def quasiperfect?
    aliquot_classification == :quasiperfect
  end

  def prime?
    proper_divisors == [1]
  end
end
