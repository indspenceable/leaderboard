module ApplicationHelper
  def link_to_game_and_match game_text, match_text, match
    "#{link_to game_text, match.game}\n#{link_to match_text, match}".html_safe
  end
  
  def display_match match
    link_to_game_and_match(match.game.titleize, match.created_at.to_date.readable_inspect, match) +  link_to("(delete)", match_path(match), method: :delete)
  end
end
