class AnswersController < ApplicationController

	def new
	end

	def create
	end

	def delete
	end

	private

	def answer_params
		params.require(:answers).permit(:body, :question_id, :user_id)
	end
end