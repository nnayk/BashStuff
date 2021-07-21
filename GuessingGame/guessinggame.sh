function game
{
num_files=$(ls -a .|wc -w|sed 's/^[[:space:]]*//g')
let num_files=num_files-2 #Since I am also searching for hidden files, I account for . and .. (which are not files but are 
#counted in the -a flag of ls) by decrementing $num_files by 2
guess=0
correct="false"
while [[ $correct != "true" ]]
do
	echo "Guess the number of files in the current directory: "
	read guess
	if [[ $guess -eq $num_files ]]
	then
		correct="true"
	elif [[ $guess -lt $num_files ]]
	then
		echo "Your guess is too low"
	else
		echo "Your guess is too high"
	fi	
done	
echo "Congratulations! Your guess was correct!"
}
game
