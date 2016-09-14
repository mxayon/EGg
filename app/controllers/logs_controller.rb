class LogsController < ApplicationController

  def index
    @learner = Learner.find(params[:learner_id])
    @logs = @learner.logs
  end

  def show
    @learner = Learner.find_by_id(params[:learner_id])
    @log = @learner.logs.find(params[:id])
  end

  def new
    @learner = Learner.find_by_id(params[:learner_id])
    @log = Log.new
  end

  def create
    @learner = Learner.find_by_id(params[:learner_id])
    @log = @learner.logs.create(log_params)
    if @learner.logs.push(@log)
      redirect_to learner_log_path(@learner, @log)
    else
      redirect_to :back
    end
  end

  def edit
    @learner = Learner.find_by_id(params[:learner_id])
    @log = @learner.logs.find(params[:id])
  end

  def update
    @learner = Learner.find_by_id(params[:learner_id])
    @log = @learner.logs.find(params[:id])
    if @log.update(log_params)
      redirect_to learner_log_path(@learner, @log)
    else
      redirect_to :back
    end
  end

  def destroy
    @learner = Learner.find_by_id(params[:learner_id])
    @log = @learner.logs.find(params[:id])
    @log.delete
    redirect_to learner_logs_path
  end

  private

  def log_params
    params.require(:log).permit(:title, :starting_mood, :level, :verbal_word_approximation, :physically_identify, :good_choices, :action, :observations, :comments, :date, :learner_id)
  end



end
