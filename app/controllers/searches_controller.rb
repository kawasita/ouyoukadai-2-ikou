class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @word = params["word"]
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      redirect_to search_result_path
    else
      @books = Book.looks(params[:search], params[:word])
      redirect_to search_result_path
    end
  end

  def search_result
    @users = User.looks(params[:search], params[:word])
    @books = Book.looks(params[:search], params[:word])
  end
end