class Director < ActiveRecord::Base
  validates(:name, {:presence => true, :uniqueness => true })
  validates(:name, uniqueness: {scope: :dob, message:"Director already exists"})
end
