require("spec_helper")

describe(Employee) do
  it("belongs to a project") do
    project = Project.create({:name => "Very important project"})
    employee = Employee.create({:name => "Pilar Martinez"})
    assignment = Assignment.create({:employee_id => employee.id, :project_id => project.id, :hours_allocated => 6, :role => "goat"})
    expect(project.employees()).to(eq([employee]))
  end
end
