class CommentsController < ApplicationController
  before_filter :load_photo

  def index
    @comments = Comment.all
  end

  def new
    @comment=Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.photo = @photo
    if current_patient
      @comment.name = current_patient.name
    elsif current_coach
      @comment.name = current_coach.name
    end
      @comment.photo_url = @photo.url
    if @comment.save
      redirect_to photo_path(@photo), notice: "Added new comment!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def load_photo
    @photo = Photo.find(params[:photo_id])
  end
end
