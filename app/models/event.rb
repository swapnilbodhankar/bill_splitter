class Event < ActiveRecord::Base
	has_many :user_paids
	accepts_nested_attributes_for :user_paids, :reject_if => lambda { |a| a[:amount].blank? }, :allow_destroy => true
end
