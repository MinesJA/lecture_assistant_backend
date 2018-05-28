

special_words = ["#QUESTION", "#LOOKUP", "#REVIEW", "#REFERENCE"]

10.times do
  name = Faker::GameOfThrones.character
  user = User.create(name: name, username: name.split(" ")[0], password: "12345")

   5.times do
     paragraph = Faker::Hipster.paragraph(30, true)
     note = user.notes.create(title: Faker::HitchhikersGuideToTheGalaxy.starship, topic: Faker::Dog.meme_phrase, professor: Faker::HarryPotter.character, location: Faker::Friends.location)

     6.times do

      special_word = special_words[rand(0..3)]
      words_array = paragraph.split(". ")
      random_index = rand(2..words_array.length - 2)
      line = words_array[random_index].split(" ").insert(0, special_word).join(" ")
      words_array[random_index] = line
      line_wo_spec = line.gsub("#{special_word} ", "")

      list = user.lists.find_or_create_by(keyword: special_word)
      listitem = list.list_items.create(content: line_wo_spec)
      note.list_items << listitem

      paragraph = words_array.join(". ")
     end

     note.update(full_text: paragraph)

   end

end
