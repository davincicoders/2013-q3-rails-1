module MainHelper

  def has_error(model, field_name)
    if model.errors[field_name] != []
      "has-error"
    else
      ""
    end
  end

end
