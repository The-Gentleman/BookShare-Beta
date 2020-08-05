class UserController < ApplicationController

    get '/login' do 
        erb :'/login'
    end 

    post '/login' do 
        @user = User.find_by_username(params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect to "/users/#{@user.id}"
        else 
            redirect to '/login'
        end 
    end 

    get '/users/:id' do 
        @user = User.find_by_id(params[:id])
        erb :'/users/show'
    end 

    get '/signup' do 
        erb :'/users/signup'
    end 

    post '/signup' do 
        @user = User.create(params)
        session[:id] = @user.id
        redirect to "/users/#{@user.id}"
    end 

    get '/logout' do 
        session.clear
        redirect to '/'
    end 
end 