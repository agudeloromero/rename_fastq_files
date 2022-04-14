# rename_fastq_files

This is a bash script to standarised different types of fastq files names.

First, give the correct permission to the script.
```
$ chmod 751 path/rename.sh
```

# For PE (Rename_PE.sh)

Run the script in the directiony where the files are placed.
```
$ ls
name_1_001.fq.gz    name_2_001.fq.gz
name_1.fq.gz        name_2.fq.gz
name_1_001.fastq.gz name_2_001.fastq.gz
name_1.fastq.gz     name_2.fastq.gz

$ ./Rename_PE.sh
```

Convert:
```
name_1_001.fq.gz    -> name_R1.fastq.gz
name_2_001.fq.gz    -> name_R2.fastq.gz

name_1_001.fastq.gz -> name_R1.fastq.gz
name_2_001.fastq.gz -> name_R2.fastq.gz

name_1.fq.gz        -> name_R1.fastq.gz
name_2.fq.gz        -> name_R2.fastq.gz

name_1.fastq.gz     -> name_R1.fastq.gz
name_2.fastq.gz     -> name_R2.fastq.gz
```

# For SE (Rename_SE.sh)

Run the script in the directiony where the files are placed.
```
$ ls
name.fq.gz
name.fastq.gz
name_001.fq.gz
name_001.fastq.gz
name_1.fq.gz
name_1.fastq.gz

$ ./Rename_SE.sh
```

Convert:
```
name.fq.gz        -> name_R1.fasta.gz
name.fastq.gz.    -> name_R1.fasta.gz
name_001.fq.gz.   -> name_R1.fasta.gz
name_001.fastq.gz -> name_R1.fasta.gz
name_1.fq.gz.     -> name_R1.fasta.gz
name_1.fastq.gz.  -> name_R1.fasta.gz
```
