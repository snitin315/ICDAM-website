class CallForPaper < ActiveRecord::Base
  # has_many :call_for_paper_subheadings


  def getallsubheading
        CallForPaperSubHeading.where(callforpaper_id: self.id)
  end
end
