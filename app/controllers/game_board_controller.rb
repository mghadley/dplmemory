class GameBoardController < ApplicationController
  def index
  	@content_arr = %W(http://www.devpointlabs.com/assets/team/DPL-jake.png
  										http://www.devpointlabs.com/assets/team/DPL-jake.png 
  		                http://www.devpointlabs.com/assets/team/DPL-dave.png
  		                http://www.devpointlabs.com/assets/team/DPL-dave.png
  		                http://www.devpointlabs.com/assets/team/DPL-christian.png
  		                http://www.devpointlabs.com/assets/team/DPL-christian.png
  		                http://www.devpointlabs.com/assets/team/DPL-parker.png
  		                http://www.devpointlabs.com/assets/team/DPL-parker.png
  		                http://www.devpointlabs.com/assets/team/DPL-ty.png
  		                http://www.devpointlabs.com/assets/team/DPL-ty.png
  		                http://www.devpointlabs.com/assets/team/DPL-nhi
  		                http://www.devpointlabs.com/assets/team/DPL-nhi
  		                http://www.devpointlabs.com/assets/team/DPL-will.png
  		                http://www.devpointlabs.com/assets/team/DPL-will.png
  		                https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/1075/s300/coursereport-dpl-logo.png
  		                https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/1075/s300/coursereport-dpl-logo.png).shuffle
  end
end
