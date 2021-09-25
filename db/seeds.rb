# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Define your section title
sections = [{title: 'Projects'},{title:  'Docs'},{title: 'Videos'},{title: 'Contact'}]

# Only create sections if the first section (Project in my case) dont exists
unless Section.find_by(sections[0])

    # For each section in sections, store section in database
    sections.each do |section|
        Section.create(section)
    end

end