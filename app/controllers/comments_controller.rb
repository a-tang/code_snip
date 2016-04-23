class CommentsController < ApplicationController

def create
   @snip             = Snip.find params[:snip_id]
   comment_params    = params.require(:comment).permit(:body)
   @comment          = Comment.new comment_params
   @comment.snip     = @snip
   if @comment.save
     redirect_to snip_path(@snip), notice: "Thanks forcommenting"
   else
     flash[:alert] = "not saved"
     # this will render the show.html.erb inside views/snips
     render "/snips/show"
   end
 end

private
  def comment_params
    params.require(:comment).permit(:body)
  end
end








def create
  @snip = Snip.find(params[:snip_id])
  @comment = @snip.comments.create(comment_params)
  redirect_to snip_path(@snip)
end
