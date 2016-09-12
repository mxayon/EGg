class LearnersController < ApplicationController

  def index
    @learners = Learner.find_by_id(params[:id])
  end

  def show
    @learner = Learner.find_by_id(params[:id])
  end

  def new
  end

  def create
  end




end
