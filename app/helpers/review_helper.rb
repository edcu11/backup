module ReviewHelper
  def get_name(review)
    nombre= User.find_by(id: review.user_id).username
  end

  def show_delete(review)
    if(current_user == User.find_by(username: 'System') || current_user == User.find_by(id: review.user_id) )
         true
    else
       false
    end
  end

end
