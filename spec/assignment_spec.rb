require('spec_helper')

describe(Assignment) do
  describe('#employee') do
    it('returns the employee id') do
      employee = Employee.create({:name => "Jake"})
      project = Project.create({:name => "Petting Zoo"})
      assignment = Assignment.create({:employee_id => employee.id, :project_id => project.id, :hours_allocated => 6, :role => "goat"})
      # binding.pry
      expect(assignment.employee).to(eq(employee))
    end
  end
end
