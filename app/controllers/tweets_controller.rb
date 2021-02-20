class TweetsController < ApplicationController

def index 
  @tweets = Tweet.all
end
 
def new
end

def create
  Tweet.create(text: params[:text] ,image: params[:image] )
  
end

private
def tweet_params
  params.permimt(:text , :image)
  
end

end
