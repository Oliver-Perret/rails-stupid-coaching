class QuestionsController < ApplicationController

   ANSWERS = {
     1 => { answer: "Great!" },
     2 => { answer: "Silly question, get dressed and go to work!" },
     3 => { answer: "I don't care, get dressed and go to work!" }
   }

  def ask


  end

  def answer
    if params[:question].nil? || params[:question].last == "?"
      @answer = ANSWERS[2]
    elsif params[:question] == "I'm going to work"
      @answer = ANSWERS[1]
    else
      @answer = ANSWERS[3]
    end

  end

end
