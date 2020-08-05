class UserController < ApplicationController

    get '/login' do 
        erb :'/login'
    end 

    post '/login' do 
        # find the user
        @user = User.find_by_username(params[:username])
        #  authenticate the user
        if @user && @user.authenticate(params[:password])
        # log them in
            session[:user_id] = @user.id
        # redirect user
            redirect to "/user/#{@user.id}"
        else 
        # show an error message using flash
        # redirect back to login
            redirect to '/login'
        end 
    end 

    get '/user/:id' do 
        'users profile page'
    end 
end 