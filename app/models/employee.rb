class Employee < ActiveRecord::Base
atte_accessible :name, :fields_attributes
has_many :fields, class_name: "EmployeeDetail"
accepts_nested_attributes_for :fields, allow_destroy: true

end
