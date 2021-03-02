class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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
  @tweet = Tweet.find(params[:id])

end

def update
  tweet = Tweet.find(params[:id])
  tweet.update(update_params)

  redirect_to :root
end

def show
  @tweet = Tweet.find(params[:id])

end

end

private
def tweet_params
  params.permit(:name, :text , :image).merge(user_id: current_user.id)
end

def update_params
  params.require(:tweet).permit(:name, :text , :image)
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end