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

### Initialize the database if you haven't already

                # run terminal
                rake db:setup

### Now initialize Rails Server

                # run terminal
                rails s





 