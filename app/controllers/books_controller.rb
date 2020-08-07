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
    end 
end 