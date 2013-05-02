class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by_id(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.name = params[:name]
    
    if @author.save
            redirect_to authors_url
          else
      render 'new'
    end
  end

  def edit
    @author = Author.find_by_id(params[:id])
  end

  def update
    @author = Author.find_by_id(params[:id])
    @author.name = params[:name]
    
    if @author.save
            redirect_to authors_url
          else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find_by_id(params[:id])
    @author.destroy
        redirect_to authors_url
      end
end
