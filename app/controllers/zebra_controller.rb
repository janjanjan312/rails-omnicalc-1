class ZebraController < ApplicationController
  
  def square_new
    render({:template => "game_templates/square_new"})
  end


  def square_results

    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2
    
    render({:template => "game_templates/square_results"})


  end


  def square_root_new
    
    render({:template => "game_templates/square_root_new"})
    
  end


  def square_root_results

    @the_num2 = params.fetch("user_number").to_f
    @the_result2 = @the_num2 ** 0.5

    render({:template => "game_templates/square_root_results"})
  end

  def payment_new
    render({:template => "game_templates/payment_new"})
  end

  def payment_results

    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
  
    @m_apr= @apr/ 100 / 12
    @m_n = @years * 12
  
    @numerator = @principal * @m_apr
    @denominator = 1 - (1+@m_apr) ** (-@m_n)
  
    @m_payment = @numerator / @denominator
    @payment = @m_payment.to_fs(:currency, {:precision => 2})
  
    @fapr=@apr.to_fs(:percentage, {:precision => 4})
    @fprincipal=@principal.to_fs(:currency, {:precision => 2})
    
    render({:template => "game_templates/payment_results"})
  end

  def random_new
    render({:template => "game_templates/random_new"})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
  
    @random_num = rand(@min..@max)
  
    @fmin = @min.round(1)
    @fmax = @max.round(1)
  
    render({:template => "game_templates/random_results"})
  end


end
