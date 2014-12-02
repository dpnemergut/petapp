class AdminController < ApplicationController
  def admin_view
     # default: render admin view
  end
  def view_complaint
       @complaints = Complaint.all
  end
end
