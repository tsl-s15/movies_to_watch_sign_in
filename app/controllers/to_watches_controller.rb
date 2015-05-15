class ToWatchesController < ApplicationController
  def index
    @to_watches = ToWatch.all
  end

  def show
    @to_watch = ToWatch.find(params[:id])
  end

  def new
    @to_watch = ToWatch.new
  end

  def create
    @to_watch = ToWatch.new
    @to_watch.movie_id = params[:movie_id]
    @to_watch.user_id = params[:user_id]

    if @to_watch.save
      redirect_to :back, :notice => "To watch created successfully."
    else
      render 'new'
    end
  end

  def edit
    @to_watch = ToWatch.find(params[:id])
  end

  def update
    @to_watch = ToWatch.find(params[:id])

    @to_watch.movie_id = params[:movie_id]
    @to_watch.user_id = params[:user_id]

    if @to_watch.save
      redirect_to to_watch_url(@to_watch.id), :notice => "To watch updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @to_watch = ToWatch.find(params[:id])

    @to_watch.destroy

    redirect_to :back, :notice => "Movie removed from watch list"
  end
end
