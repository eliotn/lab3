module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  # give the link_to
  def sort_column_link(column, title=nil)
    link_to title, {:sort => column}
  end
  def getThClass(column)
    params[:sort] == column ? "hilite" : nil
  end
end
