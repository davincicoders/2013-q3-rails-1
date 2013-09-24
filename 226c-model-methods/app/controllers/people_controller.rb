class PeopleController < ApplicationController

  def index
    @people = Person.order(:id).all
  end

  def new
    @person = Person.new
    render :new and return
  end

  def create
    person_params = params.permit(:first_name, :last_name)
    year  = params[:birth_date][:year ].to_i
    month = params[:birth_date][:month].to_i
    day   = params[:birth_date][:day  ].to_i

    @person = Person.create(person_params)
    if year > 0 && month > 0 && day > 0
      @person.birth_date = Date.new(year, month, day)
    end

    if @person.save == true
      redirect_to "/" and return
    else
      render :new and return
    end
  end

end
