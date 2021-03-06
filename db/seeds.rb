# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Define your section title
sections = [{title: 'Projects'},{title:  'Docs'},{title: 'Videos'},{title: 'Contact'}]
email =  'admin@admin.com'
user = {email: email, password: 'admin123456'}
puts("Vars Initiated!")

# Only create sections if the first section (Project in my case) dont exists
unless Section.find_by(sections[0])

    # For each section in sections, store section in database
    sections.each do |section|
        Section.create(section)
        puts("Section Created!")
    end

end

unless User.find_by(email: email)
    User.create(user)
    puts("User Created!")
end

unless Project.find_by(title: "apenas um teste")

    50.times do
        Project.create(title: "apenas um teste", user_id: 1)
        puts("Project Created!")
    end

end

unless Article.find_by(title: "apenas um teste")

    50.times do
        Article.create(title: "apenas um teste", description: "testando", content: "teste", conclusion:"paragrafo", project_id: 1)
        puts("Article Created!")
    end
    
end