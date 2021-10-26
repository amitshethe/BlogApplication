class CommentsController < ApplicationController
    before_action :find_article, only: %i[new create]
    
    def index
        @comment = Comment.all
    end

    def create        
        @comment = @article.comments.create(comment_params)        
        if @comment
            redirect_to article_comments_path
        else            
            render :error
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter,:body)        
    end

    def find_article
        @article = Article.find(params[:article_id])
    end
end
