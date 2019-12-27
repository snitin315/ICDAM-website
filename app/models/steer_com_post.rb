class SteerComPost < ActiveRecord::Base

def allmembers
  SteerComMem.where(steercompost_id: self.id)
end

end
