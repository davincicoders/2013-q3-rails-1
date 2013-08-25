class MainController < ApplicationController

  def root
    scene_id = Scene.order(:id).first.id
    redirect_to "/scene/#{scene_id}" and return
  end

  def scene
    @scene = Scene.find(params[:id])
    @from_choice = Choice.where(to_scene_id: @scene.id).first
    render :scene and return
  end

end
