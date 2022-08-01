class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    puts "params=> #{params}"
    params[:bookmark][:movie].each do |movie_id|
      Bookmark.create(movie_id: movie_id, list: @list)
    end
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id)
  end
end
