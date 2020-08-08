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
        book_tittle = params[:title]
        book_author = Book.find_by_title(book_tittle).author
        book_description = Book.find_by_title(book_tittle).description
        userid = current_user.id
        # book = Book.find_or_create_by(title: book_tittle, author: book_author, description: book_description, user_id: userid)
        binding.pry

    end 
end 