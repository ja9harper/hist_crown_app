class RootController < ApplicationController
  get('/') do
    render(:erb, :"session/new")
  end
  
  get('stories/new') do
    @story = Story.create(id: params[:id])
    render(:erb, :"/stories/new")
  end

end
