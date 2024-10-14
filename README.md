# quick_bed_sort

# 1.	Clone Repository
git clone https://github.com/OJAKIDEV/quick_bed_sort.git

cd quick_bed_sort

# 2.	Create environment
mamba create -n bed_sort_env python=3.10.1

mamba activate bed_sort_env

# 3.	install required libraries
mamba install -c bioconda snakemake 

# 4.	Data download
curl -JLO "https://figshare.com/s/727f8d920a1b8415f09a"

# 5.	Unzip the files and Copy them to main project environment folder 
gunzip shuf.a.bed.gz
gunzip shuf.b.bed.gz 

# 6. Execution

COMMAND TO CHECK POTENTIAL O/P:
snakemake -s quick_bed_sort.smk --cores 4 --dry-run

COMMAND TO CHECK REAL TIME EXECUTION:
snakemake -s quick_bed_sort.smk --cores 4 -p  : PRINTS SHELL COMMANDS
snakemake -s quick_bed_sort.smk --cores 4 -v : PRINTS IN VERBOSE MODE

COMMANDS TO EXECUTE THE CODE FOR quick_bed_sort: - 
snakemake -s quick_bed_sort.smk --cores 4 : RUN USING 4 CORES
snakemake -s quick_bed_sort.smk --cores all : RUN USING ALL CORES
snakemake -s quick_bed_sort.smk --cores 1 : NO PARALLELIZATION



