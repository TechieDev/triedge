require 'test_helper'

class Admin::ChaptersControllerTest < ActionController::TestCase
  setup do
    @chapter = chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chapter" do
    assert_difference('Chapter.count') do
      post :create, chapter: { course_id: @chapter.course_id, description: @chapter.description, title: @chapter.title }
    end

    assert_redirected_to admin_chapter_path(assigns(:chapter))
  end

  test "should show chapter" do
    get :show, id: @chapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chapter
    assert_response :success
  end

  test "should update chapter" do
    patch :update, id: @chapter, chapter: { course_id: @chapter.course_id, description: @chapter.description, title: @chapter.title }
    assert_redirected_to admin_chapter_path(assigns(:chapter))
  end

  test "should destroy chapter" do
    assert_difference('Chapter.count', -1) do
      delete :destroy, id: @chapter
    end

    assert_redirected_to admin_chapters_path
  end
end
