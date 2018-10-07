class TweetsController < ApplicationController
  get '/tweets' do
    if Helpers.logged_in?(session)
      @user = User.find_by(id: session[:user_id])
      @tweets = Tweet.all
      erb :'tweets/tweets'
    else
      redirect to '/login'
    end
  end



end
