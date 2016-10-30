class GuessesController < ApplicationController
  def index
    #params = {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}

    @list = Guess.all

    render ("guesses/index.html.erb")
  end

  def answer
    #params = ["rule" =>  "bob"]

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end

end
