class QuestionsController < ApplicationController

	def index
		@questions = Question.all 
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to question_path(@question)
		else
			@create_errors = @question.errors.full_messages
			render :new
		end
	end

	def edit
	   @question = Question.find(params[:id])
	 end

	def update
	  @question = Question.find(params[:id])

	  if @question.update(question_params)
	     redirect_to question_path(@question)
	  else
	     @update_errors = @question.errors.full_messages
	     render :edit
	  end
	end

	def show
		@question = Question.find(params[:id])
	end

	def delete
	end

	def upvote
		upvote_question
	end

	private
	def question_params
		params.require(:questions).permit(:title, :body, :user_id)
	end

	def upvote_question
		question = Question.find(params[:id])
		question.upvotes += 1
		question.save
	end
end