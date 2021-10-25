class ArticlesController < ApplicationController
before_action :intialize_Article_object, only: %i[show edit update destroy]

  def index
    @article = Article.all
  end
    
  def new
    @article = Article.new 
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  
  def update    
    if @article.update(article_params)
      redirect_to article_path
      else
        render :edit
    end
  end
  def destroy    
    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:body,:email,:email_confirmation)
  end

  def intialize_Article_object
    @article = Article.find(params[:id])
  end
end
