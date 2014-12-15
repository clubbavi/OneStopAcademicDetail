class SyllabusesController < ApplicationController
  before_action :set_syllabus, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @syllabuses = Syllabus.all
    respond_with(@syllabuses)
  end

  def show
    respond_with(@syllabus)
  end

  def new
    @syllabus = Syllabus.new
    respond_with(@syllabus)
  end

  def edit
  end

  def create
    @syllabus = Syllabus.new(syllabus_params)
    @syllabus.save
    respond_with(@syllabus)
  end

  def update
    @syllabus.update(syllabus_params)
    respond_with(@syllabus)
  end

  def destroy
    @syllabus.destroy
    respond_with(@syllabus)
  end

  private
    def set_syllabus
      @syllabus = Syllabus.find(params[:id])
    end

    def syllabus_params
      params.require(:syllabus).permit(:name, :description, :course_id)
    end
end
