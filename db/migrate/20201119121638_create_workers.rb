class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string     :position
      t.string     :language
      t.string     :specialization
      t.integer    :work_experience
      t.integer    :current_work_experience
      t.integer    :month_salary
      t.integer    :change_salary
      t.string     :city
      t.integer    :company_size
      t.string     :company_type
      t.string     :sex
      t.integer    :age
      t.string     :education
      t.string     :university
      t.string     :student_status
      t.string     :english_level
      t.string     :subject_area
      t.string     :filling_date
      t.string     :user_agent
      t.integer    :exp
      t.integer    :current_job_exp
      t.integer    :salary
      t.string     :cls

      t.timestamps
    end
  end
end
