# require 'sinatra'
require 'pry'
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

matches.each do |match|
  home = {match.fetch(:home_team) => {:win => 0 , :loss => 0}}
    leaderboard.merge!(home)
  away = {match.fetch(:away_team) => {:win => 0 , :loss => 0}}
    leaderboard.merge!(home)
end



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



#so after all of this we should have leaderboard = [{teams win loss}]
#leaderboard2 = leaderboard.sort_by {http://www.gethourglass.com/blog/ruby-how-to-sort-a-hash.html}





#leaderboard(get_value(:home_team))(:win)) +=1
   #puts winner
#      #puts match[:win] = (leaderboard.fetch(:win)).to_i += 1.to_i
#     #retrieve value of :wins from leaderboard.to_i +=1
#     #.merge! new value to :wins
#   #find :away_team in leaderboard
#    #retrieve value of losses from leaderboard.to_i +=1
#    #.merge! new value to :loss








# def find_team (matches, find_team)

# end


# cc = Hash.new(0)
# #goes through every existing hash for information
#  matches.each do |match|
#   leaderboard.select {|team| team[match.fetch(find_team)]}
#   #if the home score is bigger than the away score
#   if
#     #find the winning team name in the array with all teams, if it already exists
#     if find_team(:home_team).merge!(:win)


#     #leaderboard << {:team => match.fetch(:home_team)}
#     #add one to the tally "win"
#     #find the losing team name
#     #add one to the tally "loss"


#     end
#   else
#     leaderboard << {:item1 => 1}
#     leaderboard << {:item1 => 1}
#   end
# end

# puts cc
# puts matches
# puts leaderboard
