class ClassesController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @class = Class.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @class = Class.new(class_params)
    @class.teacher_id = @teacher.id
    if @class.save
      msg = "New class created!"
      redirect_to teacher_class_path(@class.teacher_id, @class.id)
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @class = Class.find(params[:id])
  end

  def index
  end

  private

  def class_params
    params.require(:Class).permit(:name)
  end

  def find_class
    @class = Class.find(params[:id])
  end
end
