class InvoicesController < ApplicationController

    def index
        @project = Project.distinct.pluck(:company)
    end

    def show
        @client = Timesheet.includes(:projects).where(projects: {company: params[:id]})
        @project = Project.joins(:timesheet).where(projects: {company:params[:id]})
    end
    
end
