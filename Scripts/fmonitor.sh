echo "Welcome from \"fmonitor\" Script"
DIR=../Working-Dir 

while inotifywait -m -e create,delete,modify --exclude '[.]|[0|1|2|3|4|5|6|7|8|9]|[$~]' --format '%f %:e' Working-Dir >> Staging
        do
           continue
        done &












