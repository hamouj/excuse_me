class Excuse
  attr_reader :excuse
  
  def initialize(info)
    @excuse = info[:excuse]
  end
end