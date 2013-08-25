class Choice < ActiveRecord::Base
  belongs_to :from_scene, class_name: "Scene"
  belongs_to :to_scene,   class_name: "Scene"
end
