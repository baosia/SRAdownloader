# SRAdownloader
Bash scripts for downloading single- or paired-end reads from NCBI SRA

Includes 2 shell scripts: 
SRRdownloaderP.sh
SRRfasterq2.sh

Both use utilities from the SRAToolkit available from NCBI:
https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/
or
https://github.com/ncbi/sra-tools

Install the toolkit and add it to your bash profile's $PATH variable before executing the scripts. 

### SRRdownloaderP.sh ###
This one uses the old utility fastq-dump to download datasets. It's pretty slow.

### SRRfasterq2.sh ###
Recommended that you use this one. Functionality is the same as SRRdownloaderP.sh, but this one uses fasterq-dump utility. As the name implies, it's... faster. 

Execute the shellcripts by typing in your linux terminal:

	./SRRfasterq2.sh

Respond to the prompts and your download will begin assuming all is well. 
