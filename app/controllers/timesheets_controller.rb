class TimesheetsController < ApplicationController
    def index
        @timesheet = Timesheet.all
    end

    def new
        @timesheet = Timesheet.new
        @timesheet.projects.new
    end

    def create
        @timesheet = Timesheet.new(timesheet_params)
        if @timesheet.save
            redirect_to @timesheet
        else
            @timesheet.projects.new unless @timesheet.projects.any?
            render 'new'
        end
    end

    def show
        @timesheet = Timesheet.find(params[:id])
        @project = Project.find_by timesheet_id:(params[:id])

    end

    def edit
        @timesheet = Timesheet.find(params[:id])
        @timesheet.projects
    end

    def update 
        @timesheet = Timesheet.find(params[:id])

        if @timesheet.update(timesheet_params)
            redirect_to @timesheet
        else
            render 'edit'
        end

    end

    def destroy
        @timesheet = Timesheet.find(params[:id])
        @project = Project.find_by timesheet_id:(params[:id])
        @project.destroy
        @timesheet.destroy

        redirect_to timesheets_path
    end

    private 
    def timesheet_params
        params.require(:timesheet)
        .permit(:firstname, :lastname, :billing_rate,
                projects_attributes: [:company, :date, :start_time, :end_time]
        )
    end
end
