class InvoicesController < ApplicationController
    def index
        @project = Project.distinct.pluck(:company)
    end

    def show
        # @timesheet = Timesheet.find(params[:id])
        # @project = Project.find(params[:id])
        @client = Timesheet.includes(:projects).where(projects: {company: params[:id]})
        @project = Project.joins(:timesheet).where(projects: {company:params[:id]})

    end
end
