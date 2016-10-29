class GuessesController < ApplicationController
  def index

    @first = params["first_number"]
    @second = params["second_number"]
    @third = params["third_number"]

    if @first.to_f < @second.to_f && @second.to_f < @third.to_f
      @obeys = "Yes!"
    else
      @obeys = "No!"
    end

    @list = Guess.all

    render ("guesses/index.html.erb")
  end

  def answer
    #params = ["rule" =>  "bob"]

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end

end
