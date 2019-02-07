class QuestionsController < ApplicationController
before_action :authenticate_user!
before_action :find_question, only: [:show, :edit, :update, :destroy]

  def index

  end
  
  def new
    @question = Question.new
  end
  
  def create
    @question = current_user.questions.build(question_parametrs)
    if @question.save
      flash[:notice] = "Question successfully created"
      redirect_to root_path
    else
      flash[:error] = "Question has error"
      render 'new'
    end  
  end
  
  def show
    @comments = @question.question_comments
  end
  
  def edit
  end
  
  def update
    if @question.update(question_parametrs)
      flash[:notice] = "Question successfully updated"
      redirect_to question_path(@question.id)
    else
      flash[:error] = "Question has error"
      render 'edit'
    end
    
  end
  
  def destroy
    @question.destroy
    redirect_to root_path
  end
  
private

  def question_parametrs
    params.require(:question).permit(:user_id, :title, :body)
  end
  
  def find_question
    @question = Question.find_by(id: params[:id])
  end
end
