class InvoicesController < ApplicationController
    def index
        @project = Project.all
    end

    def show
        @timesheet = Timesheet.find(params[:id])
        @project = Project.find(params[:id])

    end
end
