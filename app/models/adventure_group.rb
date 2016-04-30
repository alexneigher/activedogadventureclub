class AdventureGroup < ActiveRecord::Base
  belongs_to :pack_leader
  belongs_to :adventure_type
end
