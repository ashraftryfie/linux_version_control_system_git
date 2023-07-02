
touch Commit-Dir/Create Commit-Dir/Modify Commit-Dir/Delete

grep CREATE ToCommit | awk  {'print $1'} >> Commit-Dir/Create
grep MODIFY ToCommit | awk  {'print $1'} >> Commit-Dir/Modify
grep DELETE ToCommit | awk  {'print $1'} >> Commit-Dir/Delete


# Copy the matching file in the Working-Dir to the Local-Repo, then empty the “Create” file.
while read line
	do
  	  cp -a Working-Dir/$line Local-Repo/$line
	done < Commit-Dir/Create

> Commit-Dir/Create

# Copy the matching file in the Working-Dir to the Local-Repo, then empty the “Modify” file.
while read line
	do
   	  cp -a Working-Dir/$line Local-Repo/$line
	done < Commit-Dir/Modify

> Commit-Dir/Modify

# Delete the matching file in the Working-Dir to the Local-Repo, then empty the "Delete” file.
while read line
	do
  	  rm -rf Local-Repo/$line
	done < Commit-Dir/Delete

> Commit-Dir/Delete

#Once done empty both “Staging, ToCommit” files.
> Staging
> ToCommit

