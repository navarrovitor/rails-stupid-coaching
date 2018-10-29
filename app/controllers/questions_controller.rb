# frozen_string_literal: true

# Question Controller
class QuestionsController < ApplicationController
  def coach_answer(your_message)
    if your_message.include? '?'
      'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      'YOU SURE SHOULD!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == ""
      "Don't have anything to say uh? GO TO WORK!"
    elsif your_message == 'I AM GOING TO WORK RIGHT NOW!'
      "I'M PROUD SON!"
    elsif your_message == your_message.upcase
      "I can feel your motivation! But #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end
end
