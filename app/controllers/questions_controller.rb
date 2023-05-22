class QuestionsController < ApplicationController
  def ask
  end

  def answer
    return '' if params[:question].nil?

    question = params[:question]

    if question.chars[-1] == '?'
      @ans = 'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work'
      @ans = 'Great'
    else
      @ans = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
