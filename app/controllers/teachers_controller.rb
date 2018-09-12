class TeachersController < ApplicationController
  before_action :find_teacher, only: [:show, :edit]

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user_id = current_user.id
    if @teacher.save
      redirect_to @teacher
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def index
    @teachers = Teacher.where(user_id: current_user.id)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :subject, :age, :education)
  end

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end
end
