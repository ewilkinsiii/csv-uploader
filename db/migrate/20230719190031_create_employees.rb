class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :salary
      t.string :manager
      t.string :department
      t.date :hire_date
      t.date :termination_date
      t.string :termination_reason

      t.timestamps
    end
  end
end
