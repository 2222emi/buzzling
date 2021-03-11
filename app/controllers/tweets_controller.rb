class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

def index 
  @tweets = Tweet.includes(:user).order("created_at DESC")
  @tweets = Kaminari.paginate_array(@tweets).page(params[:page]).per(4)
end
 
def new
end

def create
  # Tweet.create(text: params[:text] ,image: params[:image] )
  Tweet.create(create_params)
  
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
  tweet.update(tweet_params)

  redirect_to :root
end

def show
  
  @tweet = Tweet.find(params[:id])
  @comment = Comment.new
  @comments = @tweet.comment.includes(:user)
  
end

def search
  @tweets = Tweet.search(params[:keyword])
end

end

private
def tweet_params
  params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
end

def create_params
  params.permit(:text, :image).merge(user_id: current_user.id)
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end