class BookController < ApplicationController

    skip_before_action :verify_authenticity_token
    #to skip token authentication
    # all methods to create fetch and display books
    #list all books
    def index      
        render json: Book.all
    end
#details of individual book based on id
    # GET Request
    def show
        propVal = Book.find(params[:id])
        render json: propVal
        # params grab the input from the user or rather the id from the url in this case
    end
#adding new book
    #POST Request
    def create     
        if(params) 
            Book.create('bookName': params[:bookName],
            'bookAuthor': params[:bookAuthor], 
            'bookQuantity': params[:bookQuantity] )     
            
            render json: "Book added successfully"
        
        else
            render json: "Data addition failed"
        end
        
    end
#updating book details
    def update
        # Fetching the new record
        # b = Book.last
        b = Book.find(params[:id].to_i)
        # b.update!(b_params)
         b.update!('bookName': params[:bookName],
            'bookAuthor': params[:bookAuthor], 
            'bookQuantity': params[:bookQuantity]  )

            render json: "Data Updated Successfully"
    end
#delete the  book
    def destroy
        b = Book.find(params[:id])
        b.destroy

        render json: "Data Deleted Successfully"
    end

#delete the new book
end
