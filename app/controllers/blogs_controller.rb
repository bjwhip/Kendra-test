class BlogsController < ApplicationController

  def index
    @blog = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params.require(:blog).permit(:title, :body))

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blogs_path, notice: 'Crud was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update

    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update(params.require(:blog).permit(:title, :body))
        format.html { redirect_to @blog, notice: 'Crud was successfully updated.' }
      else
        format.html { render :edit }
      end
    end

  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_path, notice: 'Crud was successfully destroyed.' }
    end
  end


end
