class StudentsController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @student = Student.new
    @class = Class.where(teacher_id: @teacher.id)
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @student = Student.new(student_params)
    @student.teacher_id = @teacher.id
    @student.generate_sid
    if @student.save
      msg = "New student created!"
      redirect_to teacher_path(@student.teacher_id)
    else
      render 'new'
    end
  end


  def edit
  end

  def index
  end

  def show
  end

  def destroy 
    @student = Student.find(params[:student_id])
    teacher = Teacher.find(@student.teacher_id)
    p "Terminating #{@student.full_name} from #{teacher.name}"
    respond_to do |format|
      format.js
      format.html { p 'html response'; redirect_to root_path }
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :class_id)
  end
end
