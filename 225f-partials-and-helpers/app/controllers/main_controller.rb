class MainController < ApplicationController
  def buttons
  end

  def calendar
    @from_date = Date.new(2013, 9, 1)
    @to_date   = Date.new(2013, 9, 30)
  end

  def form1
  end

  def form2
  end

  def users
  end
end
