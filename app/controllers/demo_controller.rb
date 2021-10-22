class DemoController < ApplicationController
  layout false # turn off behavior to use layout with views...
  # Instance variables allow the controller provide data to the view templates..
  def index
  end

  def hello
    @array = [1, 2, 3, 4, 5]
    @id = params['id']
    @page = params[:page]
    # render('index') -- render ERB template
    # redirect_to{:controller => 'demo', :action => 'index'}
  end

  def about
    render('about_us')
  end
  
  def contact
    puts params
    @country = params[:country]
    if ['us', 'ca'].include?(@country)
      @phone = '(800) 555-6789'
    elsif @country == 'uk'
      @phone = "(020) 7946 1234"
    else
      @phone = "+1 (987) 654-3210"
    end
    puts @phone
    render('contact_us')
  end
end
