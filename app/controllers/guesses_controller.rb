class GuessesController < ApplicationController
  def index

    @first = params["first_number"]
    @second = params["second_number"]
    @third = params["third_number"]

    if @first < @second && @second < @third
      @obeys = "Yes!"
    else
      @obeys = "No!"
    end

    render ("guesses/index.html.erb")
  end

  def answer
    #params = ["rule" =>  "bob"]

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end

end
