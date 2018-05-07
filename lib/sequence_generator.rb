module SequenceGenerator

  def generate
    possible = ["r", "g", "b", "y"]
    possible.map do
      possible.sample
    end
  end

end
