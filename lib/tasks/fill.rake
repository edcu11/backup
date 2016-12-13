namespace :fill do
  desc "TODO"
  task rellenar: :environment do
    Poke.all.each do |pkm|
      if pkm.categories.empty?
        catpok = Catpok.new(poke_id: pkm.id, category_id: 1)
        catpok.save
      end
    end
  end

  desc "Asignar User a Review"
  task ReviewUser: :environment do

    unless User.find_by(username: 'System')
      u = User.new
      u.username = "System"
      u.email = "system@system"
      u.password = "admin"
      u.password_confirmation = "admin"
      u.save
    end


    Review.all.each do |r|
      if r.user_id.blank?
        r.user_id = 3
        r.save
      end
    end
  end


end
