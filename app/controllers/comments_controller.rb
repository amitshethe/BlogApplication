class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
    end

    def comment_params
        params.require(:comment).permit(:commenter,:body)
        redirect_to article_path(@article)
    end
end
