    
def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
end

# Demande à l'utilisateur d'entrer son prénom
    print "Entrez votre prénom : "
    prenom = gets.chomp

# Appelle la méthode say_hello avec le prénom saisi
    say_hello(prenom)
