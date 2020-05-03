require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do
  context 'Add a new employee' do
    it 'successfully with valid params' do
      expect{
          post :create, params: { employee: { name: 'john doe', current_salary: 100 }}
        }.to change(Employee, :count).by(1)
    end

    it 'renders the new form if failed to create' do
      post :create, params: { employee: { name: 'john doe', current_salary: 0 }}
      expect(response).to render_template('new')
    end
  end
end
