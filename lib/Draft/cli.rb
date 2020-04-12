class Draft::CLI 
  
  def call 
    puts "Welcome! This is a list of the top 50 players for the 2020 NFL draft".colorize(:light_red)
    gets_player_list 
    gives_player_list
    gets_user_selection
  end 
  
  def gets_player_list
    @prospect = Draft::Prospect.all 
  end 
  
  def gives_player_list 
    @prospect.each.with_index(1) do |player, index|
      puts " #{index}. #{player.name} "
    end 
      puts "\nSelect a player by typing 1-50 to learn more about them!\n".colorize(:light_blue)
  end 
  
  def gets_user_selection 
    chosen_player = gets.strip.to_i
    show_summary_for(chosen_player) if valid_input(chosen_player, @prospect) 
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_summary_for(chosen_player)
    player = @prospect[chosen_player -1]
    puts "\n#{player.name}\n"
    print "\n#{player.summary}\n"
    gets_user_action
  end 
  
  def gets_user_action 
    puts "\nWould you like to view another players summary? (y/n)\n".colorize(:light_red)
    input = gets.strip 
    if input == "y"
      gives_player_list
      gets_user_selection
    elsif input == "n"
     puts "\nThank you, enjoy the draft!\n".colorize(:light_blue)
   end 
 end 
end 