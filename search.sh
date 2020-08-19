#!/bin/bash
if [[ $1 =~ rollno ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $1) {print $0}}' ./merged.txt
	}
elif [[ $1 =~ branch ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $4) {print $0}}' ./merged.txt
	}
elif [[ $1 =~ name ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $3) {print $0}}' ./merged.txt
	}
elif [[ $1 =~ email ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $2) {print $0}}' ./merged.txt
	}
elif [[ $1 =~ gradyear ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $6) {print $0}}' ./merged.txt
	}
elif [[ $1 =~ phoneno ]]
then
	{
		awk -v var1=$1  '{ if (var1 ~ $5) {print $0}}' ./merged.txt
	}
fi
