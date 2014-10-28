class PlaceController < ApplicationController
  get('/') do
    render(:erb, :"/sessions/new")
  end


end