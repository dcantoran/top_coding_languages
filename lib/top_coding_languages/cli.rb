class TopCodingLanguages::CLI

  def call
    puts "Welcome to Business Insider's Top Coding Languages of 2018!"
    puts "For a list of coding languages, type 'list'."
    puts "To exit, type 'exit'."

    input = nil
    until input == "exit"
      input = gets.strip
      case input
      when "list"
        # Languages.create
        # Languages.list
        puts "This works!"
      when "exit"
        exit
      end
    end
  end

end
