# SRAdownloader
Bash scripts for downloading single- or paired-end reads from NCBI SRA

Includes 2 shell scripts: 
SRRfastq.sh
SRRfasterq2.sh

Both use utilities from the SRA-Toolkit available from NCBI:
https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/
or
https://github.com/ncbi/sra-tools

Install the toolkit and add it to your bash profile's $PATH variable before executing the scripts. 

### SRRfastq.sh ###
This one uses the old utility fastq-dump to download datasets. It's pretty slow.

### SRRfasterq2.sh ###
Recommended that you use this one. Functionality is the same as SRRdownloaderP.sh, but this one uses fasterq-dump utility. As the name implies, it's... faster. 

Execute the shellcripts by typing in your linux terminal:

	./SRRfasterq2.sh

Respond to the prompts and your download will begin assuming all is well. 

*Note about controlled access data:
These scripts can be used to download data from controlled access collections (dbGaP for example). You simply need to execute them from the directory with the name of your repository key. See dbGaP for how to generate the key and how to configure SRA-Toolkit to use it: https://ncbi.github.io/sra-tools/pd_usage_guide.html
