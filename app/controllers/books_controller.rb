class BooksController < ApplicationController

    get '/books' do 
        @books = Book.all 
        erb :'/books/index'
    end 

    get '/books/new' do 
        @books = Book.all 
        erb :'/books/new'
    end 

    get '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        erb :'/books/show'
    end 

    post '/books' do 
        title = params[:title]
        author = Book.find_by_title(params[:title]).author
        description = Book.find_by_title(params[:title]).description
        # user_id = current_user.id 
        # book = Book.create(title: params[:title], author: author, description: description, user_id: user_id)
        redirect "/books/#{book.id}"
    end 
end 