class SnipsController < ApplicationController

  def index
    @snips = Snip.all
  end

  def show
    @snip = Snip.find(params[:id])
    @comment = Comment.new
  end

  def new
    @snip = Snip.new
  end

  def edit
    @snip = Snip.find(params[:id])
  end

  def create
    @snip = Snip.new(snip_params)
    if @snip.save
      redirect_to @snip
    else
      render 'new'
    end
  end

  def update
  @snip = Snip.find(params[:id])

  if @snip.update(snip_params)
    redirect_to @snip
  else
    render 'edit'
  end
end

  def destroy
    @snip = Snip.find(params[:id])
    @snip.destroy

    redirect_to snips_path
  end

  private
    def snip_params
      params.require(:snip).permit(:title, :code)
    end

end
