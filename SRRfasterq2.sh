#Use the following command to download SRR files from DBGaP. No need to download cart/SRA files first.

read -r -p 'SRR Number? >>> ' fastq
read -r -p 'Are reads single- or paired-end? [s/p] >>> ' ends
read -r -p 'Destination for files (full path)? >>> ' ndir
read -r -p 'Receive an email when the download has finished? (useful for WGS files) [y/n] >>> ' ans
if [ "${ans}" = "y" ]; then
	read -r -p 'Email address? >>> ' eml
	echo Email will be sent to ${eml} when download is finished.
else
	echo No email will be sent.
fi

if [ "${ends}" = "p" ]; then
#fastq-dump command will produce 3 files: file_1.fastq = forward reads, file_2.fastq = reverse reads, file.fastq = orphaned reads. 
	fasterq-dump ${fastq} -p -e 16 -O fastq -3 -o ${fastq}
elif [ "${ends}" = "s" ]; then
	fasterq-dump ${fastq} -p -e 16 -O fastq -o ${fastq}
else
	echo Invalid read end selection.
	exit
fi

cd fastq/
ls -l
echo Moving ${fastq} reads files to ${ndir} ...
mv ${fastq}* ${ndir}
echo Removing caches ...
cd ../ 
rm *.cache

if [ "${ans}" = "y" ]; then
	mail -s "SRA download has finished!" ${eml} <<< "Thanks for waiting."
	echo SRA download complete.
else
	echo SRA download complete.
fi

