def signup
    print "Définissez votre mot de passe : "
    password = gets.chomp
    return password
  end
  
  def login(password)
    print "Entrez votre mot de passe : "
    attempt = gets.chomp
  
    while attempt != password
      puts "Mot de passe incorrect ! Réessayez."
      print "Entrez votre mot de passe : "
      attempt = gets.chomp
    end
  end
  
  def welcome_screen
    puts "Bienvenue dans l'espace secret de la NSA !"
    puts "Voici quelques secrets : ..."
  end
  
  def perform
    password = signup
    login(password)
    welcome_screen
  end
  
  perform
  