class TeesController < ApplicationController
  def create
    @tee = Tee.new(tee_params)
    @tee.course = Course.find(params[:course_id])
    if @tee.save
      flash[:notice] = 'Tee created successfully!'
      redirect_to courses_path(@tee.course)
    else
      render :new
    end
  end

  private

  def tee_params
    params.require(:tee).permit(:name, :color, :slope, :rating, :yardage, :course_id, :user_id)
  end
end