class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
    before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :check_limit, only: [:new]
  before_filter :check_user, only: [:index]

respond_to :html
  def index
    @surveys = Survey.all
    respond_with(@surveys)
  end

  def show
    respond_with(@survey)
  end

  def new
    @survey = Survey.new
    respond_with(@survey)
  end

  def edit
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.user_id = current_user.id
    @survey.save
    respond_with(@survey)
  end

  def update
    @survey.update(survey_params)
    respond_with(@survey)
  end


  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:q1, :q1_file, :q2, :q2_file, :q3, :q3_file, :q4, :q4_file, :q5, :q5_file, :q6, :q6_file, :q7, :q7_file, :q8, :q8_file, :q9, :q9_file, :q10, :q10_file, :q11, :q11_file, :q12, :q12_file, :q13, :q13_file, :q14, :q14_file, :q15, :q15_file, :q16, :q16_file, :q17, :q17_file, :q18, :q18_file, :q19, :q19_file, :q20, :q20_file)
    end
  def check_user
    if current_user.admin != true
      redirect_to root_url, alert: "You must be an Admin to do this"
    end
  end
  def check_limit
    if current_user.surveys.count >= 1
      redirect_to root_url, alert: "You have already filled out a survey"
    end
  end
end
