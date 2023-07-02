#!/bin/bash

./Scripts/fmonitor.sh &

select choice in Add Commit Push APush Pull Staging ClearS Exit
	do
		case $choice in
			Add)
				./Scripts/add.sh
				;;
		
			Commit)
				./Scripts/commit.sh
				;;
   
			Push) 
        		./Scripts/push.sh
        		;;
   		
			APush) 
       			./Scripts/apush.sh
        		;;
   		
			Staging) 
        		./Scripts/staging.sh
        		;;
   		
			Pull) 
        		./Scripts/pull.sh
        		;;

			ClearS)
				> Staging
				;;

			Exit)
				killall inotifywait
				break
				;;
			
			*)
				echo "Error in get.sh: Invalid selection"
				;;
		esac
	done