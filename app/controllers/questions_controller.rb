class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_question = params[:question]
    @coach_answer =
      if params[:question] == 'I am going to work'
        'Great!'
      elsif params[:question].include? '?'
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
