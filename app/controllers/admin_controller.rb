class AdminController < ApplicationController
before_filter :check_admin_login, :only => [:admin_view, :view_complaint]
  def admin_view
     # default: render admin view
  end
  def view_complaint
       @complaints = Complaint.all
  end
end
