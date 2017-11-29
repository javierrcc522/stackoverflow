class QuestionsController < ApplicationController

  def index
    @user = User.find(params[:id])
    @questions = @user.question.all

  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @question = @user.questions.new
  end

  def create
      @user = User.find(params[:user_id])
      @question = @user.questions.new(question_params)
      if @question.save
        redirect_to user_path(@question.user)
      else
        render :new
      end
    end

    def edit
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
    render :edit
  end

  def update
   @question = Question.find(params[:id])
   @user = @question.user
   if @question.update(question_params)
     redirect_to user_path(@user)
   else
     render 'questions/edit'
   end
 end

 def destroy
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to user_path(@user)
  end

  private
    def question_params
      params.require(:user).permit(:title, :description, :tag)
    end

end
