if [ $# -eq 0 ]; then
	 echo "No Arguments passed"
	 exit
fi

for i; do
# If file exists
	if [ -f $i ]; then
		echo "$i exists"

	else
	# if "mkdir" exists
		if [ -d "mydir" ]; then
		# Directory exists
		printf "directory exists.."
		else
			mkdir mydir
		fi
		touch mydir/$i
		echo "$i file created in \"mydir\""
	fi
done

#output

#Rutwik@DESKTOP-A0UDC7F:~$ sh a33.sh Rutwik
#directory exists..Rutwik file created in "mydir"
