module UsersHelper

  def self_destruct_counter
    return unless current_user.demo?
    destruct = current_user.self_destruct_in
    "#{destruct[:hours]} hour(s), #{destruct[:minutes]} minute(s) and #{destruct[:seconds]} second(s)"
  end

  def show_tutorial?
    current_user && params[:action] != "home" && current_user.show_tutorial? && !session[:hide_tutorial]
  end

end
