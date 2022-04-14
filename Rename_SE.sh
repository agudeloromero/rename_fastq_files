!/bin/bash
#
# Author: Patricia Agudelo-Romero
# email: p.agudeloromero@gmail.com

# This script will help to rename SE fastq files in the case of
#(1) any reference of forward direction i the name.
#/dir/SRA4321.fastq.gz to /dir/SRA4321_R1.fastq.gz
#(2) or only a number
#/dir/SRA4321_1.fastq.gz to /dir/SRA4321_R1.fastq.gz

# Run the script in the directory were the files are placed

dir="$PWD"
echo "${dir}"

echo "----- fq.gz -----"

for f1 in ${dir}/*fq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/.fq.gz/_R1.fastq.gz/')
	mv $f1 $new_name
	echo "${new_name}"
done

echo "----- _001.fastq.gz -----"

for f1 in ${dir}/*fastq.gz
do
	echo "${f1}"
 
	new_name=$(echo "$f1" | sed 's/_001.fastq.gz/_R1.fastq.gz/')
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

echo "====="
