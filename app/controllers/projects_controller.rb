class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @projects = Project.all
  end

  def new
    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      redirect_to @project, notice: "Nuevo proyecto creado correctamente"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Proyecto actualizado correctamente"
    else
      render 'edit'
    end
  end

  def show
  end

  private

  def project_params
    params.require(:project).permit(:project_name, :commune, :origin_visit, :date_visit, :line, :idi, :tracing, :visit_id, :visit_booklet, :report_made, :file, :attachment,
    observations_attributes: [:action_plan, :office_observation, :office_date, :due_date, :responsible, :meet, :office_breach, :breach_date, :term_second, :responsible_second, :meet_second, :done, :_destroy ])
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
