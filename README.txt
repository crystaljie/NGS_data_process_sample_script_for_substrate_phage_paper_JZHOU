README 

This is the supplementary sample script for data analysis in the paper: Deep profiling of protease substrate specificity enabled by dual random and scanned human proteome substrate phage libraries

The initial data processing for Lib 10AA and Lib hP are different:
Raw NGS data from Lib 10AA, “*.fastq.gz” sequencing files were converted into a table with DNA sequences, amino acid sequences, counts/frequency, RPM as four columns, which were saved as .csv files for further analysis. 

For Lib hP, reads were aligned to a reference dataset using bowtie2 to generate Sam files. Sam files were then converted into Bam files using Samtools, which were then parsed using a suite of in-house analysis tools (R) to make a table with gene, ref.name, individual phage counts/frequency, peptide sequence, etc. as columns. These tables are saved as .csv files for further analysis. Some quality filters were applied: i) all the sequences with a stop codon are removed (Lib 10AA); ii) only the sequences that were in-frame are kept (Lib 10AA); iii) the bowtie2 alignment mapping quality should be greater than 10. 

List of scripts:
Bash script for bowtie alignment and SAM to BAM conversion
R notebook of all the data analysis script for casp3. The script for other proteases are similar.


R scripts were run using Rstudio. The version information is listed below:


platform       x86_64-apple-darwin15.6.0   
arch           x86_64                      
os             darwin15.6.0                
system         x86_64, darwin15.6.0        
status                                     
major          3                           
minor          5.2                         
year           2018                        
month          12                          
day            20                          
svn rev        75870                       
language       R                           
version.string R version 3.5.2 (2018-12-20)
nickname       Eggshell Igloo  


All scripts are compiled in R notebook format and include descriptive comments (marked by #) and headers.



