# frozen_string_literal: true

class ChallengesController < Api::V1::BaseController
  before_action :set_challenge, only: %i[show update destroy]

  # GET /api/v1/challenges
  def index
    @challenge = Challenge.all
    render json: @challenge
  end

  # GET /api/v1/challenges/:id
  def show
    if @challenge
      render json: @challenge
    else
      render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
    end
  end

  # POST /api/v1/challenges
  def create
    if challenge_exists?
      render_existing_challenge_error
    else
      create_new_challenge
    end
  end

  # PUT /api/v1/challenges/:id
  def update
    if @challenge
      if @challenge.update(challenge_params)
        render json: { message: 'Challenge updated successfully', data: @challenge }, status: :ok
      else
        render json: { message: 'Failed to update challenge', data: @challenge.errors },
               status: :unprocessable_entity
      end
    else
      render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
    end
  end

  # DELETE /api/v1/challenges/:id
  def destroy
    if @challenge
      @challenge.destroy
      render json: { message: "Challenge with ID #{params[:id]} has been deleted" }, status: :ok
    else
      render json: { message: "Challenge with ID #{params[:id]} not found" }, status: :not_found
    end
  end

  private

  def set_challenge
    @challenge = Challenge.find_by(id: params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :start_date, :end_date)
  end

  def challenge_exists?
    Challenge.exists?(['title = ? OR description = ?', challenge_params[:title], challenge_params[:description]])
  end

  def render_existing_challenge_error
    render json: { message: 'Challenge with the same title or description already exists' },
           status: :unprocessable_entity
  end

  def create_new_challenge
    challenge = Challenge.new(challenge_params)
    if challenge.save
      render json: { message: 'Challenge added successfully', data: challenge }, status: :created
    else
      render json: { message: 'Failed to add challenge', data: challenge.errors }, status: :unprocessable_entity
    end
  end
end
