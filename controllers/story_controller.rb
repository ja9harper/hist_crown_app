class StoryController < ApplicationController
  get('/') do
    render(:erb, :index)
  end 


  get('stories/new') do
    @story = Story.create(id: params[:id])
    render(:erb, :"stories/new")
  end

  get('/stories/:id') do
    @story = Story.find(params[:id])
    render(:erb, :'stories/show')
  end

  put('/stories/:id') do
    @story = Story.find(params[:id])
    @story.update(params["story"])
    redirect to("/stories/#{@story.id}")
  end

  
  delete('stories/:id') do
    @story = Story.find(params[:id])
  end

end

 
