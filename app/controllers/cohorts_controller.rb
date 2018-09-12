class CohortsController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @cohort = Cohort.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @cohort = Cohort.new(cohort_params)
    @cohort.teacher_id = @teacher.id
    if @cohort.save
      msg = "New cohort created!"
      redirect_to teacher_cohort_path(@cohort.teacher_id, @cohort.id)
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def index
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name)
  end

  def find_cohort
    @cohort = Cohort.find(params[:id])
  end
end
