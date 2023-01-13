class SearchauthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        propVal = Book.find_by('bookAuthor': params[:bookAuthor])
        render json: propVal
    end
end
