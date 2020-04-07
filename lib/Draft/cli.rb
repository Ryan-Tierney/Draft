class Draft::CLI 
  
  def call 
    puts "Welcome! This is a list of the top 10 players for the 2020 NFL draft".colorize(:light_red)
    gets_player_list 
    gives_player_list
    gets_user_selection
    show_summary_for_player(chosen_player)
  end 
  
  def gets_player_list
    @prospect = ["Joe Burrow", "Chase Young", "Jeff Okudah", "Derrick Brown"]
  end 
  
  def gives_player_list 
    @prospect.each_with_index do |player, index|
      puts "#{index +1}. #{player}"
    end 
  end 
  
  def gets_user_selection 
    chosen_player = gets.strip.to_i
    show_summary_for_player(chosen_player) if valid_input?(chosen_player, @prospect) 
  end 
  
  def valid_input?(input, data)
    if input.to_i <= data.length && input.to_i > 0 
    end 
  end 
  
  def show_summary_for_player(chosen_player)
    player = @prospect[chosen_player]
    puts "here is the info for #{player}"
  end 
end 