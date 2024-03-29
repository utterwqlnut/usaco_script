#!/bin/bash
echo "-> Absolute File Name"
read file
echo "-> Sample Input";
sample=""
sampleAns=""
read sample
while true; do
	read tmp
	if [ "${#tmp}" -eq 0 ] 
	then
		break
	fi
	sample="${sample}\n${tmp}"
done
echo "-> Sample Output"
read sampleAns
while true; do
	read tmp
	if [ "${#tmp}" -eq 0 ] 
	then
		break
	fi
	sampleAns="${sampleAns}\n${tmp}"
done
len=${#file}
echo -e ${sample} > "${file:0:len-4}.in"
clear
tput setaf 1
echo "
 _    _ _____ _     _____ ________  ________ 
| |  | |  ___| |   /  __ \  _  |  \/  |  ___|
| |  | | |__ | |   | /  \/ | | | .  . | |__  
| |/\| |  __|| |   | |   | | | | |\/| |  __| 
\  /\  / |___| |___| \__/\ \_/ / |  | | |___ 
 \/  \/\____/\_____/\____/\___/\_|  |_|____/
 "
 tput sgr0
returnVal=""
while true; do
	tput setaf 2
	echo -e "-> \c" 
	tput sgr0
	read commands
	if [ "$commands" = "exit" ]
	then
		break
	elif [ "$commands" = "run" ]
	then
		g++ ${file} -o ${file:0:len-4} -std=c++17
		${file:0:len-4}
		returnVal=""
		outFile=$(cat ${file:0:len-4}.out)
		cnt=0
		for line in $outFile
		do
			if [ cnt = 0 ]
			then
				returnVal="${line}"
			else
				returnVal="${returnVal}\n${line}"
			fi
			cnt+=1
		done
		if [ "${returnVal:2:${#returnVal}}" = "${sampleAns}" ]; then
			echo "Sample Case Passed"
		else
			echo "Sample Case Failed"
			echo -e "Output was \n${returnVal}"
		fi
	elif [ "$commands" = "new" ]
	then
		echo "-> New Input";
		sample=""
		sampleAns=""
		read sample
		while true; do
			read tmp
			if [ "${#tmp}" -eq 0 ] 
			then
				break
			fi
			sample="${sample}\n${tmp}"
		done
		echo "-> New Output"
		read sampleAns
		while true; do
			read tmp
			if [ "${#tmp}" -eq 0 ] 
			then
				break
			fi
			sampleAns="${sampleAns}\n${tmp}"
		done
		echo -e ${sample} > "${file:0:len-4}.in"
	else
		eval "$commands"
	fi
		
done



