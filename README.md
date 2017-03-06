# ADER17 #

4-day course at Instituto Gulbenkian de Ciência

Official course page

http://gtpb.igc.gulbenkian.pt/bicourses/ADER17/


# Overview

High-throughput technologies allow us to detect transcripts present in a cell or tissue. This course covers practical aspects of the analysis of differential gene expression by RNAseq. Participants will be presented with real world examples and work with them in the training room, covering all the steps of RNAseq analysis, from planning the gathering of sequence data to the generation of tables of differentially expressed gene lists and visualization of results. We we will also cover some of the initial steps of secondary analysis, such as functional enrichment of the obtained gene lists.


# Target Audiences

Life Scientists who want to be able to use NGS data to evaluate gene expression (RNAseq). Computational researchers that wish to get acquainted with the concepts and methodologies used in RNAseq are also welcome. Participants are encouraged to bring their own data and will have the opportunity to apply the concepts learned in the course. 


# Pre-requisites

Familiarity with elementary statistics and a few basics of scripting in R will be helpful.

Please have a look at the following resources and gauge your ability to use R in statitics at the basic level: [Coursera videos](http://blog.revolutionanalytics.com/2012/12/coursera-videos.html); [Introduction to r](http://bitesizebio.com/webinar/20600/beginners-introduction-to-r-statistical-software)

Basic Unix command line skills, such as being able to navigate in a directory tree and copy files. See, for example, ["Session 1" of the Software Carpentry training for a Unix introduction](http://bioinformatics-core-shared-training.github.io/shell-novice/). 


# Learning Objectives

At the end of the course, we expect every participant to be able to:

	1. List broad characteristics of NGS technologies and choose adequate sequencing for your biological question
	2. Have a broad overview of the steps in the analysis of RNA-Seq differential expression experiments
	3. Assess the general quality of the raw data from the sequencing facility
	4. Do simple processing operations in the raw data to improve its quality
	5. Generate alignments against a reference genome
	6. Assess the general quality of the alignments and detect possible problems
	7. Generate tables of counts using the alignment and a reference gene annotation
	8. Generate lists of differentially expressed genes, at least for a simple pairwise comparison
	9. Perform simple functional enrichment analysis and understand the concepts behind them

For this, we will provide small example datasets that participants can use to learn. 

Participants are encouraged to bring their own data and try some of the concepts they learned. For simple cases, participants may even be able to generate the complete analysis on their own data.


# TODO

Learning outcomes (LO) for each unit:

	LO_1 - Understand NGS technologies and plan your experiment:
		LO_1.1 - List possibilities and limitations of NGS sequencing technologies
			Question: What choices do you have when sending your samples to sequencing facility?
		LO_1.2 - Choose adequate sequencing for your biological question
			

	LO_2 - List steps in the analysis of RNA-Seq differential expression experiments:
		- QC of Raw Data; 
		- Preprocessing of Raw Data (if needed); 
		- Alignment of processed reads to reference genome; 
		- QC of Aligments (optional); 
		- Generate table of counts of genes/transcripts
		- QC of count table
		- Preprocessing of count table
		- Differential Analysis tests
		- Post-analysis: Functional Enrichment

	LO_3 - Assess the general quality of the raw data from the sequencing facility
		LO_3.1 - Interpret what are fastq files and what is their content
		LO_3.2 - Use software like FastQC to process fastq files and produce QC reports
		LO_3.3 - Read QC reports of raw data to assess the general quality of data and presence of sequence bias

	LO.4 - Do simple processing operations in the raw data to improve its quality
		LO_4.1 - Use tools such as seqtk and trimmomatic to remove low quality bases from your reads
		LO_4.2 - Use tools such as cutadapt to remove adaptors and other artefactual sequences from your reads

	LO.5 - Generate alignments of processed reads against a reference genome
		LO_5.1 - What is a reference genome, versioning and where to obtain genomes
		LO_5.2 - Alignment software: tophat2/hisat2; bwa; sailfish/salmon (optional)
		LO_5.3 - Running an alignment: the SAM/BAM alignment format
	
	LO.6 - Assess the general quality of the alignments and detect possible problems
		LO_6.1 - Visualizing alignments in IGV for single genes
		LO_6.2 - Use tools such as RSeQC to assess quality of alignments

	LO.7 - Generate tables of counts using the alignment and a reference gene annotation
		LO_7.1 - What is a reference gene annotation, versioning and where to obtain
		LO_7.2 - The process of generating gene counts from genome aligments
		LO_7.3 - Using tools such as htseq-counts to generate table of gene counts

	LO.8 - Generate lists of differentially expressed genes, at least for a simple pairwise comparison
		LO_8.1 - Using the R package edgeR to produce a pairwise differential expression analysis
		LO_8.2 - Interpretation and visualization of results
		LO_8.3 - Use more complex settings: Generalized Linear Models

	LO.9 - Perform simple functional enrichment analysis and understand the concepts behind them
		(Daniel Faria)
		LO_9.1 - Functional annotations: what are these and where to get them
		LO_9.2 - The statistics behind functional enrichment analysis
		LO_9.3 - Using functional enrichment analysis with your lists of genes

Exercises for each 

	LO_1.1 - 

	LO_1.2 - Question: How do these choices influence the kind of questions you can answer?

	LO_2 - Question: What are the steps in RNA-Seq data analysis and their order

	LO_3.1 - Question: What information is in fastq files, and how is it organized?

	LO_3.2 - Use FastQC to produce QC reports from example fastq files

	LO_3.3 - Use example FastQC reports to assess data quality and possible presence of sequence bias
		* Detect low quality bases in the QC reports
		* Detect sequence bias and possible presence of adaptors and other contaminants

	LO_4.1 - Remove low quality bases from sequencing reads:
		* Use seqtk to remove a fixed number of bases from either ends of a fastq
		* Use seqtk to remove low quality bases from end of a fastq file
		* Use trimmomatic to filter/trim low quality bases using more complex approaches

	LO_4.2 - Remove artefactual sequences from sequencing reads:
		* Remove Illumina adaptor using cutadapt
		* Remove PolyA tails using cutadapt
		* check results using FastQC on filtered data

	LO.5.1 - What is a reference genome, versioning and where to obtain genomes
		* Question: Are genomes constant?
		* Obtain genome fasta from Ensembl
	
	LO_5.2 - Alignment software: tophat2/hisat2; bwa; sailfish/salmon (optional)
		* Question: what are the conditions of using burrows-wheeler approaches?	
		* Prepare a reference genome to use with hisat2 and bwa

	LO_5.3 - Running an alignment: the SAM/BAM alignment format
		* Run hisat2 / bwa mem in an example dataset
		* Question: what is the SAM format; what is the BAM format?
	
	LO_6.1 - Visualizing alignments in IGV for single genes
		* Open IGV and visualize example BAM files for example genes

	LO_6.2 - Use tools such as RSeQC to assess quality of alignments
		* Use tools such as RSeQC and Qualimap to generate QC reports based on alignments
		* Interpret general alignment statistics such as percentage of aligned reads
		* Check the reports to assess RNA integrity and diversity

	LO_7.1 - What is a reference gene annotation, versioning and where to obtain
		* Question: what is the GFF/GTF format?
		* Obtain genome GTF from Ensembl

	LO_7.2 - The process of generating gene counts from genome aligments
		* Question: what parameters we need to consider when counting?

	LO_7.3 - Using tools such as htseq-counts to generate table of gene counts
		* Use tools such as htseq-counts to generate table of gene counts in example datasets

	LO_8.1 - Using the R package edgeR to produce a pairwise differential expression analysis
		* Use Galaxy to produce differentially expressed genes with edgeR
		* Using edgeR in R and RStudio 

	LO_8.2 - Interpretation and visualization of results
		* Produce PCA plot comparing all samples: outlier detection
		* Visualize expression profiles of top differentially expressed genes
		* Produce other plots such as vulcano plots

	LO_8.3 - Use more complex settings: Generalized Linear Models
		* Account for confounders using Generalized Linear Models
		* Performing ANOVA-like comparisons

	LO.9 - Perform simple functional enrichment analysis and understand the concepts behind them
		(Daniel Faria)
		LO_9.1 - Functional annotations: what are these and where to get them
		LO_9.2 - The statistics behind functional enrichment analysis
		LO_9.3 - Using functional enrichment analysis with your lists of genes

## Detailed Program [available here][mkdnlink].

[mkdnlink]: program.md





