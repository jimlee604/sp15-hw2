class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    @text = "You are nothing!"
    if (!params[:name].blank? or !params[:adjective].blank?)
        @text = params[:name] + " is so " + params[:adjective];
    end
    # puts @text
    render 'adj'
    # render plain: @text
  end

  def age
  end

  def person
    name = params[:name]
    age = params[:age]
    p = Person.new(name, age)
    @intro = p.introduce()
    @year = p.birthyear()
    @nick = p.nickname()
  end
end
