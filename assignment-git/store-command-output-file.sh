echo "give a command please"
for (( ; ; ))
do 
	read str
	echo "Command: - $str"
	echo "Output:- "
	$str >> output1.txt
	cat output1.txt
done
