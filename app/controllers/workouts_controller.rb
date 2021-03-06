class WorkoutsController < ApplicationController
  
  def index
    @workouts = Workout.all
    @workouts_by_date = @workouts.group_by(&:date) 
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
  
  def show
    @workout = Workout.find(params[:id])
  end
  
  def new
    @workout = Workout.new
  end
  
  def create
    @workout = Workout.new(workouts_params)
    
    if @workout.save
      redirect_to workouts_path
      flash[:success] = "Trening stworzony"
    else
      render "new"
    end
  end
  
  def edit
    @workout = Workout.find(params[:id])
  end
  
  def update
    @workout = Workout.find(params[:id])
    
    if @workout.update_attributes(workouts_params)
      redirect_to workouts_path
      flash[:success] = "Trening zmieniony"
    else
      render "edit"
    end
  end
  
  def destroy
  end
  
  private
    
    def workouts_params
      params.require(:workout).permit(:title, :date, :time, :mood)
    end
end
