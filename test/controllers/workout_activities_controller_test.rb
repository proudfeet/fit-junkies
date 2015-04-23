require 'test_helper'

class WorkoutActivitiesControllerTest < ActionController::TestCase
  setup do
    @workout_activity = workout_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_activity" do
    assert_difference('WorkoutActivity.count') do
      post :create, workout_activity: {  }
    end

    assert_redirected_to workout_activity_path(assigns(:workout_activity))
  end

  test "should show workout_activity" do
    get :show, id: @workout_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_activity
    assert_response :success
  end

  test "should update workout_activity" do
    patch :update, id: @workout_activity, workout_activity: {  }
    assert_redirected_to workout_activity_path(assigns(:workout_activity))
  end

  test "should destroy workout_activity" do
    assert_difference('WorkoutActivity.count', -1) do
      delete :destroy, id: @workout_activity
    end

    assert_redirected_to workout_activities_path
  end
end
