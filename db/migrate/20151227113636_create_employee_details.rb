class CreateEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :employee_details do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :employee_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
