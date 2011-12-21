module ApplicationHelper
  def link_to_game_and_match game_text, match_text, match
    "#{link_to game_text, match.game}\n#{link_to match_text, match}".html_safe
  end
end
