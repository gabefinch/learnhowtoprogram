class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render :index
  end

  def new
    @lesson = Lesson.new
    render :new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson successfully added."
      redirect_to lessons_path()
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render :edit
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(lesson_params)
    flash[:notice] = "Lesson successfully updated."
    redirect_to lessons_path
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Lesson successfully deleted."
    redirect_to lessons_path
  end

  private


  def lesson_params
    params.require(:lesson).permit(:name, :text)
  end
end
