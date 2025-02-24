class GamesController < ApplicationController
  def new
    @letters =[]
    10.times do
      @letters << ("A" .. "Z").to_a.sample
      end
    end

  def score
    user_input = params[word]
    url = "https://dictionary.lewagon.com/#{user_input}"
    word_serialized = URI.parse(url).read
    word = JSON.parse(word_serialized)
    is_english = word["found"] # va stocker un booleen

    grid = param[grid]
    in_the_grid = user_input.chars.all? {|letter| user_input.count(letter) <=grid.count(letter)}
    raise
end
end
