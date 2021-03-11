class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.order("created_at DESC")
    @tweets = Kaminari.paginate_array(@tweets).page(params[:page]).per(4)

  end
  
  # def search
  #   @user = User.search(params[:keyword])
  # end

end
