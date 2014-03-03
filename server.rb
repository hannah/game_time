# require 'sinatra'
require 'pry'

# get '/leaderboard' do
# erb :index

leaderboard = {}
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


#probably should refactor to use a method
matches.each do |match|
  home = {match.fetch(:home_team) => {:win => 0 , :loss => 0}}
  leaderboard.merge!(home)
  away = {match.fetch(:away_team) => {:win => 0 , :loss => 0}}
  leaderboard.merge!(away)
end


#could probably use a method within this but no time to refactor it currently
matches.each do |playoff|
  if playoff.fetch(:home_score).to_i > playoff.fetch(:away_score).to_i
    winner = playoff.fetch(:home_team)
    loser  = playoff.fetch(:away_team)
    leaderboard[winner][:win] +=1
    leaderboard[loser][:loss] +=1
  else
    winner = playoff.fetch(:away_team)
    loser  = playoff.fetch(:home_team)
    leaderboard[winner][:win] +=1
    leaderboard[loser][:loss] +=1
  end
end

#|k,v| [-v,k] is what i need to implement

leaderboard2 = leaderboard.sort_by { |key, value| [value[:win], -value[:loss]] }.reverse
leaderboard3 = leaderboard2.sort_by
binding.pry
