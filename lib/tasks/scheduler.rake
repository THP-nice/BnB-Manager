desc "bot twitter Bnbmanager def nice"
 task twitter_bnb: :environment do
    puts "Début de mon programme"
    TwitterBnb.new.nice
    puts "Le programme a tourné"
end
