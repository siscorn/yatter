class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_index_path
    end
  end
  
  def new
    @project=Project.new
  end

  private
    def project_params
      params.require(:project).permit(:owner,:title, :project_status_id)
    end
end
