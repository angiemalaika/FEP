require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { q10: @survey.q10, q10_file: @survey.q10_file, q11: @survey.q11, q11_file: @survey.q11_file, q12: @survey.q12, q12_file: @survey.q12_file, q13: @survey.q13, q13_file: @survey.q13_file, q14: @survey.q14, q14_file: @survey.q14_file, q15: @survey.q15, q15_file: @survey.q15_file, q16: @survey.q16, q16_file: @survey.q16_file, q17: @survey.q17, q17_file: @survey.q17_file, q18: @survey.q18, q18_file: @survey.q18_file, q19: @survey.q19, q19_file: @survey.q19_file, q1: @survey.q1, q1_file: @survey.q1_file, q20: @survey.q20, q20_file: @survey.q20_file, q2: @survey.q2, q2_file: @survey.q2_file, q3: @survey.q3, q3_file: @survey.q3_file, q4: @survey.q4, q4_file: @survey.q4_file, q5: @survey.q5, q5_file: @survey.q5_file, q6: @survey.q6, q6_file: @survey.q6_file, q7: @survey.q7, q7_file: @survey.q7_file, q8: @survey.q8, q8_file: @survey.q8_file, q9: @survey.q9, q9_file: @survey.q9_file }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { q10: @survey.q10, q10_file: @survey.q10_file, q11: @survey.q11, q11_file: @survey.q11_file, q12: @survey.q12, q12_file: @survey.q12_file, q13: @survey.q13, q13_file: @survey.q13_file, q14: @survey.q14, q14_file: @survey.q14_file, q15: @survey.q15, q15_file: @survey.q15_file, q16: @survey.q16, q16_file: @survey.q16_file, q17: @survey.q17, q17_file: @survey.q17_file, q18: @survey.q18, q18_file: @survey.q18_file, q19: @survey.q19, q19_file: @survey.q19_file, q1: @survey.q1, q1_file: @survey.q1_file, q20: @survey.q20, q20_file: @survey.q20_file, q2: @survey.q2, q2_file: @survey.q2_file, q3: @survey.q3, q3_file: @survey.q3_file, q4: @survey.q4, q4_file: @survey.q4_file, q5: @survey.q5, q5_file: @survey.q5_file, q6: @survey.q6, q6_file: @survey.q6_file, q7: @survey.q7, q7_file: @survey.q7_file, q8: @survey.q8, q8_file: @survey.q8_file, q9: @survey.q9, q9_file: @survey.q9_file }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
