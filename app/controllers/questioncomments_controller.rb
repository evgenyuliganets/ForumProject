class QuestioncommentsController < ApplicationController
before_action :authenticate_user!
before_action :set_question

  def new
    @comment = QuestionComment.new
  end
  
  def create
    params[:question_comment][:user_id] = current_user.id
    params[:question_comment][:question_id] = @question.id
    @comment = QuestionComment.new(comment_parametrs)
    if @comment.save
      redirect_to question_path(@question.id)
    else
      render 'new'
    end
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
private
  def set_question
    @question = Question.find_by(id: params[:question_id])
  end
  
  def comment_parametrs
    params.require(:question_comment).permit(:user_id, :question_id, :body)
  end
end
