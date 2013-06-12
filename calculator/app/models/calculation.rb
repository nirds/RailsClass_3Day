class Calculation < ActiveRecord::Base
  attr_accessible :function, :input, :output

  before_save :perform_calculation

  def add
    a = input.split(',')
    a.map!{|s| s.to_i}
    a.inject(:+)
  end

  def subtract
    a = input.split(',')
    a.map!{|s| s.to_i}
    a.inject(:-)
  end

private

  def perform_calculation
    self.output = send function
  end

end
