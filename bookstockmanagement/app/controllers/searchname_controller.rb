class SearchnameController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        render json: Book.find_by('bookName': params[:bookName])
    end
end
