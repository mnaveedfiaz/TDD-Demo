class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :role
      t.decimal :current_salary
      t.date :joining_date

      t.timestamps
    end
  end
end
