class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    @course.syllabus = Syllabus.new
    respond_with(@course)
  end

  def edit
  end

  def create
    puts "PARAMS---------#{course_params.inspect}"
    @course = Course.new(course_params)
    @course.save
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :short_form, syllabus_attributes: [:id, :name, :description, :course_id])
    end
end
