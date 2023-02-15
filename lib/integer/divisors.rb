##
# Extends Ruby's native Integer class with methods pertaining to the integer's divisors.
# See /ext/math/src/integer.rs
class Integer
  ##
  # !@method proper_divisors
  #
  # Evaluates the proper divisors of the integer.
  #
  # @return [Array<Integer>] the integer's proper divisors.

  ##
  # !@method aliquot_sum
  #
  # Evaluates the aliquot sum of the integer (sum of proper divisors).
  #
  # @return [Integer] aliquot sum of the integer.

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
