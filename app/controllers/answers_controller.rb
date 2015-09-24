class AnswersController < ApplicationController

	def new
	end

	def create
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