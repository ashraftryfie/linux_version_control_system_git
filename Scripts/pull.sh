
#First, you will get only the name of the latest created folder under remote-Repo
latest=$(ls -td Remote-Repo/* | tail -1)

# Empty all the content under the Local-Repo
rm -rf Local-Repo/*


# Copy the content of latest folder under the Remote-Repo to the Local-Repo
cp -a $latest Local-Repo

# Empty all the content under the Working-Dir
rm -rf Working-Dir/*


# Copy the content of latest folder under the Remote-Repo to the Working-Dir
cp -a $latest Working-Dir



