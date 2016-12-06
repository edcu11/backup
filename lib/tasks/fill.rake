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

end
