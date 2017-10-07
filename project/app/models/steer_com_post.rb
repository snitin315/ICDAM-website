class SteerComPost < ActiveRecord::Base
  has_many :steer_com_mems

def allmembers
  SteerComMem.where(steercompost_id: self.id)
end

end
