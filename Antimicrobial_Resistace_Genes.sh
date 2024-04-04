


######### Installation of necessary Environent and softwate.

#########
######### add necessary channels
#########

conda config --add channels bioconda  #add bioconda channels
conda config --add channels conda-forge # add conda-forge channels

conda config --show channels 

#########
######### create environment for antimicrobial resistance genes
#########

conda create -n AMR abricate

#########
######### If stac in solving environment forever or takes bit longer then install libmamba using below command
#########

conda install -n base conda-libmamba-solver
conda config --set solver libmamba


#########
######### Also we can use bellow code for install abriccate
#########

conda install -c conda-forge -c bioconda -c defaults abricate
abricate --check
abricate --list  ####### To see available database by this code

echo "all necessary tools is installed"

#########
######### Run ABRicate to search for AMR genes
#########

abricate --db ncbi --quiet SPAdes_contigs.fasta # to find the resistance gene from .fasta sequence using ncbi database

abricate --db ncbi --quiet SPAdes_contigs.fasta | tr "\\t" "," > SPAdes_contigs.csv


echo "Successfully completion of finding Antimicrobial Resistance Genes"






