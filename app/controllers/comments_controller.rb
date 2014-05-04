class CommentsController < ApplicationController
  before_filter :load_photo

  def new
    @comment=Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.photo = @photo
    @comment.name = current_patient.name
    if @comment.save
      redirect_to patient_photo_path(current_patient,@photo), notice: "Added new comment!"
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
