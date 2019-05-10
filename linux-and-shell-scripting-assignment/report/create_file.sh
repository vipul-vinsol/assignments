#!/bin/bash

filename="subscribers.txt"
`touch $filename`
declare -a DOMAINS
declare -a CITIES

DOMAINS=(yahoo.com gmail.com hotmail.com rediffmail.com)
CITIES=(Delhi Mumbai Chennai Kolkatta)

generate_random_number_between_zero_and_four () {
	return $((RANDOM % 4))
}

generate_random_phone_number () {
	local a=""
	for (( j=0; j<10; j++ )) 
	do
		a="$a$((RANDOM % 10))"
	done	
	echo "$a"
}

for (( i=0; i<100; i++  ))
do
	phone_number="$(generate_random_phone_number)"
	generate_random_number_between_zero_and_four
	data_row="${DOMAINS[$?]}, ${CITIES[$?]}, $phone_number"
	echo $data_row >> $filename
done


