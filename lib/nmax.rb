require 'set'

class Nmax
  MAX_LENGTH = 1000

  def initialize
    @s = Set.new
  end
  
  def add_numbers_from str
    @s.merge str.scan(/\d{1,#{MAX_LENGTH}}/).map(&:to_i)
  end
  
  def top n = nil
    n ||= @s.size
    @s.sort { |a, b| b <=> a } [0..n-1]
  end

  private

  def _size
    @s.size
  end

  def _max
    top.first
  end

end