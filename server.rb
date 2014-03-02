# require 'sinatra'
require 'pry'
leaderboard = []
matches = [
  {
    home_team: "Patriots",
    away_team: "Broncos",
    home_score: 7,
    away_score: 3
  },
  {
    home_team: "Broncos",
    away_team: "Colts",
    home_score: 3,
    away_score: 0
  },
  {
    home_team: "Patriots",
    away_team: "Colts",
    home_score: 11,
    away_score: 7
  },
  {
    home_team: "Steelers",
    away_team: "Patriots",
    home_score: 7,
    away_score: 21
  }
]


# puts matches[0].fetch(:home_score)
matches.each do |match|
  if (match.fetch(:home_score)).to_i > (match.fetch(:away_score)).to_i
    leaderboard <<  "a"#(:team => match.fetch(:home_team) (:win => :win[+=1]).to_Hash
    leaderboard << "dog"#:team matches[away_team:], :loss loss:[+=1].to_Hash
  else
    leaderboard << "mouse"#:team matches[home_team:], :win win:[+=1].to_Hash
    leaderboard << "cat"#:team matches[away_team:], :loss loss:[+=1].to_Hash
  end
end


puts leaderboard
