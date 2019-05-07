# frozen_string_literal: true
module API
	module V1
		class IdeasController < ActionController::API
			def index
				@ideas = Idea.all
				render json: @ideas, status: 200
			end

			def create
				@idea = Idea.create(idea_params)
				render json: @idea, status: 201
			end

			def show
				render json: @idea
			end

			def update
				@idea = Idea.update(idea_params)
				render json: @idea, status: 200
			end

			def destroy
				@idea.destroy
				head :no_content
			end

			private

			def set_idea
				@idea = Idea.find(params[:id])
			end

			def idea_params
				params.permit(:name, :description, :tags)
			end
		end
	end
end