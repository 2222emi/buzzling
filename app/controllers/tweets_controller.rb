class TweetsController < ApplicationController

def index 
  @tweets = Tweet.all
end
 
def new
end

def create
  # Tweet.create(text: params[:text] ,image: params[:image] )
  Tweet.create(tweet_params)
  
end

def destroy
  # @tweet = tweet.find_by(id:params[id])
  # @tweet.destroy
  # redirect_to tweet_path
  tweet = Tweet.find(params[:id])
  tweet.destroy
  # redirect_to :root
end

def edit
  tweet = Tweet.find(params[:id])
end


end

private
def tweet_params
  params.permit(:name, :text , :image)
end
