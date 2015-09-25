class AnswersController < ApplicationController

	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.new(answer_params)
		if @answer.save
			redirect_to question_answer_path
		else
			render 'new'
		end
	end

	def delete
	end

	def upvote_answer
		upvote
	end

	private

	def answer_params
		params.require(:answers).permit(:body, :question_id, :user_id)
	end

	def upvote
		answer = Answer.find(params[:id])
		answer.upvotes += 1
		answer.save
	end
end