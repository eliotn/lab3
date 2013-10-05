module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  # give the link_to
  def sort_column_link(column, title=nil)
    session[:sort] = params[:sort]
    link_to title, {:sort => column, :ratings => params[:ratings]}
  end
  
  def getThClass(column)
    params[:sort] == column ? "hilite" : nil
  end
  #constructs a check box tag
  #first item is the parameter set
  #second item is what it is set to
  #third item is if the check box should be checked
  def getCheckBoxStatus(rating)
    check_box_tag "ratings[#{rating}]" , 1, params[:ratings][rating] != nil
  end
end
