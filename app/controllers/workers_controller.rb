class WorkersController < ApplicationController

  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end

  private

  def worker_params
    params.require(:worker).permit(:position, :language, :specialization, :work_experience, :current_work_experience,
                                   :month_salary, :change_salary, :city, :company_size, :company_type, :sex, :age, :exp,
                                   :education, :university, :student_status, :english_level, :subject_area, :number, :cls,
                                   :filling_date, :user_agent, :created_at, :updated_at, :current_job_exp, :salary)
  end
end
