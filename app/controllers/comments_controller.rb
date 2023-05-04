class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[topic_id])
    @comment = @topic.commentsbuild(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to root_url
    else
      render "topics/index"
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
