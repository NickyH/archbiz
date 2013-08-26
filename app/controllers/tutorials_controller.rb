class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end
  def new
    @tutorial = Tutorial.new
  end
  def create
    tutorial = Tutorial.create(params[:tutorial])
    redirect_to(tutorials_path)
  end
  def show
    @tutorial = Tutorial.find(params[:id])
  end
  def edit
    @tutorial = Tutorial.find(params[:id])
  end
  def update
    tutorial = Tutorial.find(params[:id])
    tutorial.update_attributes(params[:recipe])
    redirect_to(tutorial_path)
  end
  def destroy
    tutorial = Tutorial.find(params[:id])
    tutorial.delete
    redirect_to(tutorials)
  end
end