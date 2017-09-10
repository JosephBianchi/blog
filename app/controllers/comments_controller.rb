class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    unless @comment.errors.any?
      redirect_to article_path(@article)
    else
      render 'articles/show' #why in the world does this work!!
    end
  end

private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
