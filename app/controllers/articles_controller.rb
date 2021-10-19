class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end
  
  def show
    
     @article = Article.find(params[:id])
      
  
    
    #@article = Article.find_by(title: params[:title])
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
  def edit

    @article = Article.find(params[:id])

  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path
      else
        render :edit
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title,:body,:email,:email_confirmation)
  end
end
