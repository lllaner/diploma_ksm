class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string     :number
      t.string     :position
      t.string     :language
      t.string     :specialization
      t.string     :work_experience
      t.string     :current_work_experience
      t.string     :month_salary
      t.string     :change_salary
      t.string     :city
      t.string     :company_size
      t.string     :company_type
      t.string     :sex
      t.string     :age
      t.string     :education
      t.string     :university
      t.string     :student_status
      t.string     :english_level
      t.string     :subject_area
      t.string     :filling_date
      t.string     :user_agent
      t.string     :exp
      t.string     :current_job_exp
      t.string     :salary
      t.string     :cls

      t.timestamps
    end
  end
end
