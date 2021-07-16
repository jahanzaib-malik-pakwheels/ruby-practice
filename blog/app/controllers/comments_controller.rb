class CommentsController < ApplicationController
    #http_basic_authenticate_with name: "admin", password: "pass", only: [:destroy]
    def create
        @article = Article.find(params[:article_id])

        params[:comment][:user_id] = current_user.id
        @comment = @article.comments.create(comment_params)
        #@comment.user = current_user
        #@comment.save
        redirect_to article_path(@article)
    end

    def destroy
        print params
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status,:user_id)
        end
end
