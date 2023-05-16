    def half_pyramid(hauteur)
        hauteur.times do |i|
        puts " " * (hauteur - i) + "#" * (i + 1)
        end
    end
    
    def full_pyramid(hauteur)
        hauteur.times do |i|
        puts " " * (hauteur - i - 1) + "#" * (2 * i + 1)
        end
    end
    
    def wtf_pyramid(hauteur)
        half_pyramid(hauteur / 2 + 1)
        puts "#" * hauteur
        reversed_hauteur = hauteur / 2
        reversed_hauteur.times do |i|
        puts " " * (i + 1) + "#" * (hauteur - 2 * (i + 1))
        end
    end
    
    puts "Salut, bienvenue dans ma super pyramide !"
    print "Combien d'étages veux-tu ? (Choisis un nombre impair et pair) : "
    hauteur = gets.chomp.to_i
    
    if hauteur.even?
        puts "Le nombre d'étages doit être impair."
    else
        puts "Voici une pyramide à moitié :"
        half_pyramid(hauteur)
        
        puts "\nVoici une pyramide complète :"
        full_pyramid(hauteur)
        
        puts "\nVoici une pyramide étrange :"
        wtf_pyramid(hauteur)
    end
    