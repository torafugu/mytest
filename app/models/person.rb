class Person < ActiveRecord::Base
  belongs_to :first_favfood, :class_name => 'Food', :foreign_key => 'first_favfood_id'
  belongs_to :second_favfood, :class_name => 'Food', :foreign_key => 'second_favfood_id'
  belongs_to :third_favfood, :class_name => 'Food', :foreign_key => 'third_favfood_id'
end
