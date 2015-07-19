class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    cookies[:user_name] = auth.info.nickname
    cookies[:user_image] = auth.info.image
    cookies[:user_url] = auth.info.urls.Twitter
    cookies[:twitter_token] = auth.credentials.token
    cookies[:twitter_secret] = auth.credentials.secret

    redirect_to root_path
  end
end
