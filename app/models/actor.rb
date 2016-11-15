class Actor < ActiveRecord::Base
  validates(:name, {:presence=>true})
  validates(:name, uniqueness: {scope: :dob, message:"Existing actor"})
end
