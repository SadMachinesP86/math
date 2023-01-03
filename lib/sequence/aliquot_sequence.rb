module Sequence
  class AliquotSequence
    MAX_ITERATIONS_ON_INIT = 100

    attr_reader :period, :repeats_from

    def initialize(starting_at)
      @starting_at = starting_at.to_i
      @sequence = [@starting_at]

      for i in (1..MAX_ITERATIONS_ON_INIT) do
        populate_next
        break if @full_sequence_discovered
      end
    end

    def repeating?
      @full_sequence_discovered ? @repeating : nil
    end

    def terminates?
      @full_sequence_discovered ? !@repeating : nil
    end

    private

    def populate_next
      unless @full_sequence_discovered
        next_value = @sequence.last.aliquot_sum

        if @sequence.include? next_value
          populate_metrics(repeats_from: @sequence.index(next_value))
          nil
        else
          @sequence.push next_value

          if next_value == 0
            populate_metrics
          end
        end
      end
    end

    def populate_metrics(repeats_from: nil)
      @full_sequence_discovered = true
      @repeating = !!repeats_from

      if repeats_from
        @repeats_from = repeats_from
        @period = (@sequence[repeats_from..]).count
      end
    end
  end
end

class Integer
  def aliquot_sequence
    Sequence::AliquotSequence.new(self)
  end
end
