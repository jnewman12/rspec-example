class QuestionsController < ApplicationController

	def index
		@questions = Question.all 
		#@question = Question.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def show
		@question = Question.find(params[:id])
	end

	def delete
	end

	private
	def question_params
		params.require(:questions).permit(:title, :body, :user_id)
	end
end