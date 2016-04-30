class AdventureType < ActiveRecord::Base
  has_many :adventure_groups
end
