class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates(:hourly_rate, inclusion: { within: 40..120 })
end
