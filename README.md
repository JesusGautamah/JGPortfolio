## Jesus Gautamah's Ruby On Rails Portfolio

### Edit exports.sh with your database (mysql) information

                # /exports.sh
                export DB_USER="YOUR DB USER"
                export DB_PASS="YOUR DB PASSWORD"
                export DB_HOST="YOUR DB HOST"
                export DB="YOUR DB NAME"
                export DB_TEST="YOUR DB TEST NAME"

### Run exports.sh in the same terminal were you will initiate the rails server

                # run terminal
                source exports.sh

### Edit seeds to store your portfolio sections and user

                # /db/seeds.rb
                sections = [{title: 'Projects'},{title:  'Docs'},{title: 'Videos'},{title: 'Contact'}]
                email =  'admin@admin.com'
                user = {email: email, password: 'admin123456'}

### Initialize the database if you haven't already

                # run terminal , this creates db, migrate and stores information from  /db/seeds.rb
                rake db:setup

### Initialize the database (other way)

                # run terminal, create db
                rake db:create

                # run terminal, create tables from /db/migrate to db
                rake db:migrate

                # run terminal, store informations from /db/seeds.rb
                rake db:seed


### Now initialize Rails Server

                # run terminal
                rails s





 