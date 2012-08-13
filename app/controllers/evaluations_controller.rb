class EvaluationsController < ApplicationController

  def index
  end

  def show
    @evaluation = Evaluation.find(params[:id])
  end

  def update
    @evaluation = Evaluation.find(params[:id])
    @evaluation.update_attributes(params[:evaluation])
    p "CHATTE"
    Resque.enqueue ::ExecuteJava, @evaluation.id
  end

  def create
    @evaluation = Evaluation.create(params[:evaluation])
    redirect_to evaluation_path(@evaluation)
  end

  def new
    @evaluation = Evaluation.new
  end
end
