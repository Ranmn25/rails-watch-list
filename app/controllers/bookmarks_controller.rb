class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render 'new'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
