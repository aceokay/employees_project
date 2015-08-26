class CreateAssignments < ActiveRecord::Migration
  def change
    create_table(:assignments) do |t|
      t.column(:employee_id, :integer)
      t.column(:project_id, :integer)
      t.column(:hours_allocated, :integer)
      t.column(:role, :string)

      t.timestamps()
    end

    remove_column(:employees, :project_id, :integer)
  end
end
