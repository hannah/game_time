require 'sinatra'
require 'pry'

def find_team(teams, team_name)
  teams.find { |team| team[:name] == team_name }
end

get '/leaderboard' do
  @leaderboard = []

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
    home = { name: match[:home_team], wins: 0 , losses: 0}
    away = { name: match[:away_team], wins: 0 , losses: 0}
    @leaderboard << home
    @leaderboard << away
    @leaderboard.uniq!
  end

  #could probably use a method within this but no time to refactor it currently
  matches.each do |match|
    if match[:home_score] > match[:away_score]
      winner = find_team(@leaderboard, match[:home_team])
      loser = find_team(@leaderboard, match[:away_team])
    else
      winner = find_team(@leaderboard, match[:away_team])
      loser = find_team(@leaderboard, match[:home_team])
    end

    winner[:wins] += 1
    loser[:losses] += 1
  end

  @leaderboard.sort_by! { |team| [-team[:wins], team[:losses]] }

  erb :leaderboard
end
