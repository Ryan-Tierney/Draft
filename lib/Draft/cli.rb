class Draft::CLI 
  
  def call 
    puts "Welcome! This is a list of the top 10 players for the 2020 NFL draft".colorize(:light_red)
    gets_player_list 
    gives_player_list
  end 
  
  def gets_player_list
    @prospect = ["Joe Burrow", "Chase Young", "Jeff Okudah", "Derrick Brown"]
  end 
  
  def gives_player_list 
    @prospect.each_with_index do |player, i|
      puts "#{i +1}. #{player}"
    end 
  end 
end 