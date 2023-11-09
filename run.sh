echo 'sleep 15 secs'
sleep 15


echo 'run db script'



echo 'run flask db init'
flask db init


echo 'run flask db migrate'
flask db migrate -m "initial migration"


echo 'run flask db upgrade'
flask db upgrade


echo 'start gunicorn server'
gunicorn app:app --bind 0.0.0.0:5005 #module_name:application_variable_name