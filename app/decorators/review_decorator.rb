class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
  	  author = user.firstname + " " + user.lastname
  end

end
