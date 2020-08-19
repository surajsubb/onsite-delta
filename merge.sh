#!/bin/bash
echo rollno email name branch phoneno gradyear > "./merged.txt";
while IFS=" " read -r var1 var2 var3 #var1 = rollno var2 = email var3 = name
do
	while IFS=" " read -r var4 var5  #var4 = rollno var5 = branch
	do
		if [[ $var1 = $var4 ]]
		then
			echo $var1 $var2 $var3 $var5 >> "./mergedtemp.txt";
		fi
	done < "./RB"
    
done < "./REN"
while IFS=" " read -r var1 var2 var3  var4 #var1 = rollno var2 = email var3 = name var4 = branch
do
	while IFS=" " read -r var5 var6 var7  #var5 = email var6 = phoneno var7 = gradyear
	do
		if [[ $var2 = $var5 ]]
		then
			echo $var1 $var2 $var3 $var4  $var6 $var7 >> "./merged.txt";
		fi
	done < "./EPG"
    
done < "./mergedtemp.txt"
rm "./mergedtemp.txt"
