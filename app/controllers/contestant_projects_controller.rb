class ContestantProjectsController < ApplicationController
  def create
    project = Project.find(params[:id])
    contestant_project = ContestantProject.create(contestant_id: params[:contestant_id], project_id: params[:id])
    redirect_to "/projects/#{project.id}"
  end
end
