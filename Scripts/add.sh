echo "Choose file from \"Staging\" folder:"
cat Staging

declare arr
echo "file names:"
read -a arr

for e in ${arr[@]}
	do
		grep -i $e Staging | awk -F":" {'print $1'} >> ToCommit
	done


