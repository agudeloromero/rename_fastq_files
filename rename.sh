#!/bin/bash
#

# Author: Patricia Agudelo-Romero
# This script will help to rename fastq files from different forms as name_R1.fastq.gz and name_R2.fastq.gz

dir="$PWD"
echo "${dir}"

echo "----- fq.gz -----"

for f1 in ${dir}/*fq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/.fq.gz/.fastq.gz/')
	mv $f1 $new_name
	echo "${new_name}"
done

echo "----- _001.fastq.gz -----"

for f1 in ${dir}/*fastq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/_001.fastq.gz/.fastq.gz/')
	mv $f1 $new_name
	echo "${new_name}"
done

echo "----- _1.fastq.gz -----"

for f1 in ${dir}/*_1.fastq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/_1.fastq.gz/_R1.fastq.gz/')
	mv $f1 $new_name
	echo "${new_name}"
done

echo "----- _2.fastq.gz -----"

for f1 in ${dir}/*_2.fastq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/_2.fastq.gz/_R2.fastq.gz/')
	mv $f1 $new_name
	echo "${new_name}"
done

echo "====="
