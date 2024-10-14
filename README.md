# quick_bed_sort

# 1.	Clone Repository
git clone https://github.com/OJAKIDEV/quick_bed_sort.git
cd quick_bed_sort

# 2.	Create environment
# mamba create -n bed_sort_env python=3.10.14
# mamba activate bed_sort_env

# 3.	install required libraries
# mamba install -c bioconda snakemake 

#4.	Data download
# curl -JLO "https://figshare.com/ndownloader/files/49358275?private_link=727f8d920a1b8415f09a"
# curl -JLO "https://figshare.com/ndownloader/files/49358278?private_link=727f8d920a1b8415f09a"
# mv shuf.a.bed.gz bed_files/
# mv shuf.b.bed.gz bed_files/

#5.	Unzip the files and Copy them to main project environment folder 
# gunzip shuf.a.bed.gz && mv quick_bed_sort/bed_files
