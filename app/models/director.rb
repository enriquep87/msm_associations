class Director < ActiveRecord::Base
  validates(:name, {:presence => true, :uniqueness => true })
  alidates(:name, uniqueness: {scope: :dob, message:"Director already exists"})
end
