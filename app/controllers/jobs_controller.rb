class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    new_job = Job.create
    render json: params
  end

  def index
    render json: Job.all
  end

  def search
    render json: Job.find(params[:id])
  end

end
