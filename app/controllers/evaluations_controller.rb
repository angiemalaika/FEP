class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @evaluations = Evaluation.all
    respond_with(@evaluations)
  end

  def show
    respond_with(@evaluation)
  end

  def new
    @evaluation = Evaluation.new
    respond_with(@evaluation)
  end

  def edit
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.save
    respond_with(@evaluation)
  end

  def update
    @evaluation.update(evaluation_params)
    respond_with(@evaluation)
  end

  def destroy
    @evaluation.destroy
    respond_with(@evaluation)
  end

  private
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    def evaluation_params
      params.require(:evaluation).permit(:published_articles, :accepted_articles, :submitted_articles, :proceedings, :presentations, :other, :funded_proposals, :submitted_proposals, :teaching, :teaching_achievements)
    end
end
