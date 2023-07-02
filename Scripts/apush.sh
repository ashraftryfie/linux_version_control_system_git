
select choice in Once Repeatedly Exit
	do
		case $choice in
			Once)
				select c in Add_new Delete_task Exit
					do
						case $c in 
							Add_new)
								echo "Enter the time  “push.sh” script will be executed at: (in Minutes)"
								read t
								echo /GIT/Scripts/push.sh | at now + $t min
								# at now +1 minutes <<< "/GIT/Scripts/push.sh"
							;;

							Delete_task)
								echo "Choose the task you wont to delete "
								at -l
								read n
								atrm $n
							;;
		
							Exit)
								break
							;;
					
							*)
								echo "Error: Invalid selection "
							;;
						esac
					done
			;;
		
			Repeatedly)
				select ch in min Hourly Daily Monthly Yearly Exit
					do
						case $ch in
							
							min)
								echo "* * * * * /GIT/Scripts/push.sh" > cront_new
								crontab cront_new
							;;
				
							Hourly)
								echo "0 * * * * /GIT/Scripts/push.sh" > cront_new
								crontab cront_new
								rm -f cront_new 
							;;

							Daily)
								echo "0 0 * * * /GIT/Scripts/push.sh" > cront_new
							crontab cront_new
							;;

							Monthly)
								echo "0 0 1 * * /GIT/Scripts/push.sh" > cront_new
							crontab cront_new
							;;

							Yearly)
								echo "0 0 1 1 * /GIT/Scripts/push.sh" > cront_new
								crontab cront_new
							;;

							Exit)
								break
							;;


							*)
								echo "Error: Invalid selection "
							;;
					esac
				done
			;;

		  	Exit)
        	        break    
       			;;
	
			*)
				echo "Error: Invalid selection"
			;;
		esac
	done 
