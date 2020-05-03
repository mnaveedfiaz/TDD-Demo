require 'rails_helper'

RSpec.describe Employee, type: :model do

  context 'Validations' do
    it 'Ensures the presence of name' do
      employee = Employee.new(name: '').save
      expect(employee).to eq(false)
    end

    it 'Ensures the presence of current_salary' do
      employee = Employee.new(name: 'john doe', current_salary: nil).save
      expect(employee).to eq(false)
    end

    it "Current_salary always greator than zero" do
      employee = Employee.new(name: 'jhon doe', current_salary: 0).save
      expect(employee).to eq(false)
    end
  end

end