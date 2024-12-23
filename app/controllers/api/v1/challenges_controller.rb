module Api
  module V1
    class ChallengesController < ApplicationController
      # GET /api/v1/challenges
      def index
        @challenge = Challenge.all
        render json: @challenge
      end

      # GET /api/v1/challenges/:id
      def show
        challenge = Challenge.find_by(id: params[:id])
        if challenge
          render json: challenge
        else
          render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
        end
      end

      # POST /api/v1/challenges
      def create
        if Challenge.exists?(title: challenge_params[:title]) || Challenge.exists?(description: challenge_params[:description])
          render json: { message: 'Challenge with the same title or description already exists' }, status: :unprocessable_entity
        else
          challenge = Challenge.new(challenge_params)
          if challenge.save
        render json: { message: 'Challenge added successfully', data: challenge }, status: :created
          else
        render json: { message: 'Failed to add challenge', data: challenge.errors }, status: :unprocessable_entity
          end
        end
      end

      # PUT /api/v1/challenges/:id
      def update
        challenge = Challenge.find_by(id: params[:id])
        if challenge
          if challenge.update(challenge_params)
        render json: { message: 'Challenge updated successfully', data: challenge }, status: :ok
          else
        render json: { message: 'Failed to update challenge', data: challenge.errors }, status: :unprocessable_entity
          end
        else
          render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
        end
      end

      # DELETE /api/v1/challenges/:id
      def destroy
        challenge = Challenge.find_by(id: params[:id])
        if challenge
          challenge.destroy
          render json: { message: "Challenge with ID #{params[:id]} has been deleted" }, status: :ok
        else
          render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
        end
      end

      private

      def challenge_params
        params.require(:challenge).permit(:title, :description, :start_date, :end_date)
      end
    end
  end
end
