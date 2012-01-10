module ApplicationHelper
  def link_to_game_and_match game_text, match_text, match
    "#{link_to game_text, match.game}\n#{link_to match_text, match}".html_safe
  end
  
  def display_match match
    (match.players.map{|p| link_to p.titleize, p }.to_sentence + " played " + link_to(match.game.titleize, match.game) + " on " + link_to(match.created_at.to_date.readable_inspect, match)).html_safe
  end
  
  def logged_in?
    current_user
  end
end
