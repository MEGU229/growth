class ManualsController < ApplicationController
  
  def index
    @manuals = Manual.includes(:user)
  end

  def new
    @manual = Manual.new
  end

  def create
    @manual = Manual.new(manual_params)
    if @manual.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @manual = Manual.find(params[:id])
    @comment = Comment.new
    @comments = @manual.comments.includes(:user)
  end

  def edit
    @manual = Manual.find(params[:id])
    unless @manual.user_id == current_user.id
     redirect_to action: :index
    end
  end

  def update
    @manual = Manual.find(params[:id])
    @manual.update(manual_params)
    if @manual.update(manual_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    manual = Manual.find(params[:id])
    manual.destroy
    redirect_to root_path
  end

  private
  def manual_params
    params.require(:manual).permit(:title, :text,:image).merge(user_id: current_user.id)
  end
end
