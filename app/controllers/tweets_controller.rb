class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def show
  end

  def edit
  end

  def create
    @tweet = Tweet.create(tweet_params)
    redirect_to root_path
  end

  def update
    @tweet.update(tweet_params)
    redirect_to root_path
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :text, :image)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
