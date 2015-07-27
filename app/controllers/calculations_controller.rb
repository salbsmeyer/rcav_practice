class CalculationsController < ApplicationController

  def instructions
    render("instructions.html.erb")
  end

  def payment
  @year = params ["year"]
  @dollar = params ["dollar"]
  @interest = params ["interest"]
  @monthly_apr = @interest/100/12
  @payment = (@monthly_apr + (@monthly_apr/((1+@monthly_apr)**(12*@years)-1)))* @dollar

  render("payment.html.erb")
  end

  def random_number
    @lower_number = params ["lower_number"]
    @upper_number = params ["upper_number"]
    @answer = rand(@lower_number .. @upper_number)

    render("random_number.html.erb")
  end

  def square_root
    @number = params["number"]
    @answer = Math.sqrt@number

    render("square_root.html.erb")
  end



end
