# antimicrobial-resistance
ABRicate Mass screening of contigs for antimicrobial resistance or virulence genes. It comes bundled with multiple databases: NCBI, CARD, ARG-ANNOT, Resfinder, MEGARES, EcOH, PlasmidFinder, Ecoli_VF and VFDB.


Output
Abricate produces a tap-separated output file with the following columns:

Column	Example	Description
FILE	Ecoli.fna	The filename this hit came from
SEQUENCE	contig000324	The sequence in the filename
START	23423	Start coordinate in the sequence
END	24117	End coordinate
STRAND	+	Strand + or -
GENE	tet(M)	AMR gene name
COVERAGE	1-1920/1920	What proportion of the gene is in our sequence
COVERAGE_MAP	===============	A visual represenation of the hit. ==aligned, .=unaligned, /=has_gaps
GAPS	1/4	Openings / gaps in subject and query - possible psuedogene?
%COVERAGE	100.00%	Proportion of gene covered
%IDENTITY	99.95%	Proportion of exact nucleotide matches
DATABASE	ncbi	The database this sequence comes from
ACCESSION	NC_009632:49744-50476	The genomic source of the sequence
PRODUCT	aminoglycoside O-phosphotransferase APH(3')-IIIa	Gene product (if available)
RESISTANCE	TETRACYCLINE;FUSIDIC_ACID	putative antibiotic resistance phenotype, ;-separated
