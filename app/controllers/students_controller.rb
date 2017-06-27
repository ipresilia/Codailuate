class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @student = current_batch.students
  end

  def show; end

  def new
    @student = current_batch.student.build
  end

  def create
    @student = current_batch.student.build(student_params)

    if @student.save
      redirect_to @student, notice: "Student Added"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "Student Updated"
    else
      render :edit
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params
      .require(:student)
      .permit(
        :full_name, :picture, :last_evaluation
      )
  end
end
