class CalculatorController < ApplicationController
  def square
    render ({:template => "display_templates/square"})
  end

  def square_results
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2
    render ({:template => "display_templates/square_results"})
  end
  
  def square_root
    render ({:template => "display_templates/square_root"})
  end

  def square_root_results
    @the_num = params.fetch("user_number").to_f
    @the_result = Math.sqrt(@the_num)
    render ({:template => "display_templates/square_results"})
  end

  def payment
    render ({:template => "display_templates/payment"})
  end

  def payment_results
    @rate = params.fetch("user_apr").to_f / 100 / 12
    @number_periods = params.fetch("user_years").to_f * 12
     @present_value = params.fetch("user_pv").to_f
    @payment = (@rate * @present_value) / (1-(1+@rate)**(@number_periods * -1))
    render ({:template => "display_templates/payment_results"})
  end 

  def random
    render ({:template => "display_templates/random"})
  end

  def random_results
    @min_num = params.fetch("user_min").to_f
    @max_num = params.fetch("user_max").to_f
    @rand_num = rand(@min_num...@max_num)
    render ({:template => "display_templates/random_results"})
  end 

end
