class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    # Rule to compute answer
    @answer = if @question == 'I am going to work right now!'
                'Excelent...'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
    # Rule to change if motivated
    @answer = "I can feel your motivation! #{@answer}" if @question == @question.upcase
  end
end
