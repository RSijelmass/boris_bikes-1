class Bike

  def initialize
    @status = "working"
  end

  def working?
    @status == "working"
  end

  def report_broken
    @status = "broken"
  end
end
