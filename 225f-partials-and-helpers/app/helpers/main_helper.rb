module MainHelper

  def times_symbol
    "&times;".html_safe
  end

  def divided_by_symbol
    "&divide;".html_safe
  end

  def logo_image
    image_tag "logo.png"
  end

  def big_submit_button
    "<div class='form-group'>
      #{submit_tag "Submit", class: "btn btn-primary btn-lg btn-block"}
    </div>".html_safe
  end

  def glyphicon_button(icon)
    "<button class='btn btn-default'>
      <span class='glyphicon glyphicon-volume-#{icon}'></span>
    </button>".html_safe
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end

  def format_date(date)
    date.strftime('%Y-%m-%d')
  end

  def red_if_too_young(age)
    if age >= 21
      age
    else
      "<span class='under-21'>#{age}</span>".html_safe
    end
  end

  def calculate_age_of(user)
    from_date = user.birth_date
    to_date = Date.new(2013, 9, 21)
    age = (to_date - from_date).to_i / 365
    age
  end

  def navbar_tab(route, action)
    if params[:action] == action
      classes = "pull-right active"
    else
      classes = "pull-right"
    end

    "<li class='#{classes}'>#{link_to action.humanize, route}</li>".html_safe
  end

  def label_and_text_field(field)
    "<div class='form-group'>
      #{label_tag field, nil, class: "col-sm-2 control-label"}
      <div class='col-sm-10'>
        #{text_field_tag field, "", class: "form-control col-sm-10"}
      </div>
    </div>".html_safe
  end

  def label_and_check_box(field)
    "<div class='form-group'>
      <div class='col-sm-offset-2 col-sm-10'>
        <div class='checkbox'>
          #{check_box_tag :remember_me}
          #{label_tag :remember_me}
        </div>
      </div>
    </div>".html_safe
  end

  def text_field_group(field)
    "<div class='form-group'>
      #{label_tag field}
      #{text_field_tag field, "", class: "form-control"}
    </div>".html_safe
  end

  def text_area_group(field)
    "<div class='form-group'>
      #{label_tag field}
      #{text_area_tag field, "", class: "form-control"}
    </div>".html_safe
  end

  def select_group(field, values, prompt)
    "<div class='form-group'>
      #{label_tag field}
      #{select_tag :field,
        options_for_select(values), prompt: prompt, class: "form-control"}
    </div>".html_safe
  end

  def labeled_check_box(field, label)
    "<div class='checkbox'>
      #{check_box_tag :marketing_us}
      #{label_tag field, label}
    </div>".html_safe
  end

  def no_label_and_submit_button
    "<div class='form-group'>
      <div class='col-sm-offset-2 col-sm-10'>
        #{submit_tag "Submit", class: "btn btn-primary"}
      </div>
    </div>".html_safe
  end

end
