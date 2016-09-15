class LearnersController < ApplicationController

  def index
    @user = current_user
    @learners = @user.learners
  end

  def new
    @user = User.find_by_id(params[:id])
    @learner = Learner.new
  end

  def create
    @user = User.find_by_id(params[:id])
    @learner = Learner.new(learner_params)

    @learner.save
      redirect_to @learner
  end

  def show
    @user = current_user
    @learner = @user.learners.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
    @learner = Learner.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @learner = Learner.find_by_id(params[:id])
    if @learner.update(learner_params)
      redirect_to learner_path(@learner)
    else
      redirect_to :back
    end
  end

  def destroy
    @learner = Learner.find_by_id(params[:id])
    @learner.delete
    redirect_to learners_path
  end

  private

  def learner_params
    params.require(:learner).permit(:name, :age, :image, :parent_guardian, :contact_info, :user_id, :inventory_of_favorites)
  end



end
