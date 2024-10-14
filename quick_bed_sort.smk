import os

input_dir = "bed_files"
output_dir = "sorted_bed_file_per_sample"
query_file = "standard_selection.tsv"

os.makedirs(output_dir, exist_ok=True)

with open(query_file, "r") as f:
    chromosomes = {line.strip() for line in f if line.strip()}

rule all:
    input:
        expand(os.path.join(output_dir, "{chromosome}.bed"), chromosome=chromosomes)

rule combine_bed:
    input:
        bed_files=lambda wildcards: [
            os.path.join(input_dir, f) 
            for f in os.listdir(input_dir) 
            if f.endswith(".bed")
        ]
    output:
        os.path.join(output_dir, "{chromosome}.bed")
    params:
        chromosome="{chromosome}"
    run:
        all_bed_files = input.bed_files
        with open(output[0], "w") as outfile:
            for bed_file in all_bed_files:
                with open(bed_file, "r") as infile:
                    for line in infile:
                        if line.startswith(params.chromosome + "\t") or line.startswith(params.chromosome + "_"):
                            outfile.write(line)


