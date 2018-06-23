class ProfessorController < ApplicationController

	def index
		@question = Question.all
	end

	def new
	end

	def create
		Question.create(question_params)
	end

	    private
    def question_params
      params.permit(:name, :image, :text)
    end

end
