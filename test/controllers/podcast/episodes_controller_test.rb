require 'test_helper'

module Podcast
  class EpisodesControllerTest < ActionController::TestCase
    setup do
      @episode = podcast_episodes(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:episodes)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create episode" do
      assert_difference('Episode.count') do
        post :create, episode: { name: @episode.name, description: @episode.description, image: @episode.image, file: @episode.file }
      end

      assert_redirected_to series_episode_path(assigns(:episode))
    end

    test "should show episode" do
      get :show, id: @episode
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @episode
      assert_response :success
    end

    test "should update episode" do
      patch :update, id: @episode, episode: { name: @episode.name, description: @episode.description, image: @episode.image, file: @episode.file }
      assert_redirected_to series_episode_path(assigns(:episode))
    end

    test "should destroy episode" do
      assert_difference('Episode.count', -1) do
        delete :destroy, id: @episode
      end

      assert_redirected_to episodes_path
    end
  end
end
