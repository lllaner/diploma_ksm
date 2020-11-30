class WorkersController < ApplicationController

  def index
    render plain: 'Diploma Work'
  end

  def worker
    render json: params[:id] ? Worker.find(params[:id]).to_json : { status: 'Bad request' }
  end

  def languages
    if params[:city]
      render json: Worker.all.where(language: params[:city]).pluck(:language).uniq.reject(&:blank?)
    else
      render json: Worker.all.pluck(:language).uniq.reject(&:blank?)
    end
  end

  def cities
    render json: Worker.all.pluck(:city).uniq.to_json
  end

  def salary
    if params[:language]
      @salaries = Worker.all.where(language: params[:language]).pluck(:month_salary).sort_by(&:to_i)
      render json: { min: @salaries.first, middle: @salaries[@salaries.size / 2], max: @salaries.last }.to_json
    elsif params[:query]
      salary_start = (params[:query].to_i / 500) * 500
      salary_end = salary_start + 500
      response = (Worker.all.where(month_salary: salary_start..salary_end).count / Worker.count.to_f).round(3)
      render json: response
    elsif params[:city]
      render json: Worker.all.where(city: params[:city]).order(month_salary: :desc).take(10)
    else
      render json: {status: 'Bad request'}.to_json
    end
  end

  def top_workers
    if params[:language]
      @workers = Worker.all.where(language: params[:language]).order(month_salary: :asc)
      workers_start = @workers.count / 2
      workers_end = workers_start + 10
      middle = @workers[workers_start..workers_end]

      render json: { max: @workers.take(10), middle: middle, min: @workers.order(month_salary: :desc).take(10) }.to_json
    else
      render json: {status: 'Bad request'}.to_json
    end
  end

  private

  def worker_params
    params.require(:worker).permit(:position, :language, :specialization, :work_experience, :current_work_experience,
                                   :month_salary, :change_salary, :city, :company_size, :company_type, :sex, :age, :exp,
                                   :education, :university, :student_status, :english_level, :subject_area, :number, :cls,
                                   :filling_date, :user_agent, :created_at, :updated_at, :current_job_exp, :salary)
  end
end
