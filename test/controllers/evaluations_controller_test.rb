require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post :create, evaluation: { accepted_articles: @evaluation.accepted_articles, funded_proposals: @evaluation.funded_proposals, other: @evaluation.other, presentations: @evaluation.presentations, proceedings: @evaluation.proceedings, published_articles: @evaluation.published_articles, submitted_articles: @evaluation.submitted_articles, submitted_proposals: @evaluation.submitted_proposals, teaching: @evaluation.teaching, teaching_achievements: @evaluation.teaching_achievements }
    end

    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should show evaluation" do
    get :show, id: @evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation
    assert_response :success
  end

  test "should update evaluation" do
    patch :update, id: @evaluation, evaluation: { accepted_articles: @evaluation.accepted_articles, funded_proposals: @evaluation.funded_proposals, other: @evaluation.other, presentations: @evaluation.presentations, proceedings: @evaluation.proceedings, published_articles: @evaluation.published_articles, submitted_articles: @evaluation.submitted_articles, submitted_proposals: @evaluation.submitted_proposals, teaching: @evaluation.teaching, teaching_achievements: @evaluation.teaching_achievements }
    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete :destroy, id: @evaluation
    end

    assert_redirected_to evaluations_path
  end
end
