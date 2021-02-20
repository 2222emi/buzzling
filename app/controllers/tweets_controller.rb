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

private
def tweet_params
  params.permit(:name, :text , :image)
  
end
end
