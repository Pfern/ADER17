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

Please have a look at the following resources and gauge your ability to use R in statitics at the basic level:
	* [Coursera videos](http://blog.revolutionanalytics.com/2012/12/coursera-videos.html)
	* [Introduction to r](http://bitesizebio.com/webinar/20600/beginners-introduction-to-r-statistical-software)

Basic Unix command line skills, such as being able to navigate in a directory tree and copy files. See, for example, ["Session 1" of the Software Carpentry training for a Unix introduction](http://bioinformatics-core-shared-training.github.io/shell-novice/). 


# Learning Objectives

At the end of the course, we expect every participant to be able to:
	1 List broad characteristics of NGS technologies and choose adequate sequencing for your biological question
	2 Have a broad overview of the steps in the analysis of RNA-Seq differential expression experiments
	3 Assess the general quality of the raw data from the sequencing facility
	4 Do simple processing operations in the raw data to improve its quality
	5 Generate alignments against a reference genome
	6 Assess the general quality of the alignments and detect possible problems
	7 Generate tables of counts using the alignment and a reference gene annotation
	8 Generate lists of differentially expressed genes, at least for a simple pairwise comparison
	9 Perform simple functional enrichment analysis and understand the concepts behind them

For this, we will provide small example datasets that students can use to learn. 

Students are encouraged to bring their own data and try some of the concepts they learned. For simple cases, participants may even be able to generate the complete analysis on their own data.


# TODO

Define the overall learning objectives:

Break down in units (sub-objectives) that can be assigned to instructors:
	1 - List broad characteristics of NGS technologies and choose adequate sequencing for your biological question
		1.1 - List broad characteristics of NGS technologies
		1.2 - Choose adequate sequencing for your biological question
	* Have a broad overview of the steps in the analysis of RNA-Seq differential expression experiments
	* Assess the general quality of the raw data from the sequencing facility
	* Do simple processing operations in the raw data to improve its quality
	* Generate alignments against a reference genome
	* Assess the general quality of the alignments and detect possible problems
	* Generate tables of counts using the alignment and a reference gene annotation
	* Generate lists of differentially expressed genes, at least for a simple pairwise comparison
	* Perform simple functional enrichment analysis and understand the concepts behind them

Identify learning outcomes (LO) for each unit:
	* LO_1 - Understand NGS technologies and plan your experiment:
		* LO_1.1 - List possibilities and limitations of NGS sequencing technologies
		* LO_1.2 - Choose adequate sequencing for your biological question
	* LO_2 - List steps in the analysis of RNA-Seq differential expression experiments
		* QC of Raw Data; 
		* Preprocessing of Raw Data (if needed); 
		* Alignment of processed reads to reference genome; 
		* QC of Aligments (optional); 
		* Generate table of counts of genes/transcripts
		* QC of count table
		* Preprocessing of count table
		* Differential Analysis tests
		* Post-analysis: Functional Enrichment
	* LO_3 - Assess the general quality of the raw data from the sequencing facility
		* LO_3.1 - NGS data (especially illumina) usually comes as fastq files
		* LO_3.2 - Each sequencing read is represented as 4 lines of text which includes sequence and quality
		* LO_3.3 - Use software like FastQC to process fastq files and produce QC reports
		* LO_3.4 - Read QC reports of raw data to assess the general quality of data and presence of sequence bias
	* LO.4 - Do simple processing operations in the raw data to improve its quality
		* LO_4.1 - Use tools such as seqtk and trimmomatic to remove low quality bases from your reads
		* LO_4.2 - Use tools such as cutadapt to remove adaptors and other artefactual sequences from your reads

- Generate alignments of processed reads against a reference genome
	-- Sources of reference genomes: Ensembl; NCBI; (be wary of versions)
	-- Preprocessing of the reference genome for aligment
	-- Alignment software: tophat2/hisat2; bwa mem
	-- Running an alignment
	-- 
	
- Assess the general quality of the alignments and detect possible problems
- Generate tables of counts using the alignment and a reference gene annotation
- Generate lists of differentially expressed genes, at least for a simple pairwise comparison
- Perform simple functional enrichment analysis and understand the concepts behind them


    For each outcome design an exercise 

	* LO_2 - Question: What are the steps and their order (in the morning wrap-up of the following day?)

	* LO_3.1 - Question: What is the type of files you usually get from a NGS sequencing facility?

	* LO_3.2 - Question: What information is in fastq files, and how is it organized?

	* LO_3.3 - Use FastQC (in galaxy, local GUI or commandline) to produce QC reports from example fastq files

	* LO_3.4 - Use example FastQC reports to assess data quality and possible presence of sequence bias

	* LO_4.1 - Remove low quality bases from sequencing reads:

		* Use seqtk to remove a fixed number of bases from either ends of a fastq
		* Use seqtk to remove a low quality basess from end of a fastq file
		* Use trimmomatic to remove low quality basess from end of a fastq file using more complex measures

	* LO_4.2 - Remove artefactual sequences from sequencing reads using cutadapt:
		
		* Remove Illumina adaptor
		* Remove PolyA tails



    For each exercise identify the short lecture needed and the materials



    Compose a schedule, spreading moments of wrap-up, feedback, Q&A, etc. 





