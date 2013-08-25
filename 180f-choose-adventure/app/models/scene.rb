class Scene < ActiveRecord::Base
  has_many :choices, class_name: "Choice", foreign_key: "from_scene_id"
end
