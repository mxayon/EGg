class LearnersController < ApplicationController

  def index
    @user = current_user
    @learners = Learner.all
  end

  def new
    @user = current_user
    @learner = Learner.new(learner_params)
  end

  def create
    @user = current_user
    @learner = Learner.new(learner_params)

    @learner.save
      redirect_to @learner
  end

  def show
    @learner = Learner.find_by_id(params[:id])
  end

  def edit
    @user = current_user
    @learner = Learner.find_by_id(params[:id])
  end

  def update
    @user = current_user
    @learner = Learner.find_by_id(params[:id])
    if @learner.update(learner_params)
      redirect_to learner_path(@learner)
    else
      redirect_to :back
    end
  end

  private

  def learner_params
    params.require(:learner).permit(:name, :age, :image, :parent_guardian, :contact_info)
  end



end
