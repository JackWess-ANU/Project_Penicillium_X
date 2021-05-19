# Short bash script to run a BUSCO analysis with lineage eurotiales, on 4 assemblies for Penicillium x.

# Parameters:
# nice -n 15 ionice -c3 (simply a small code to put the busco runs on low priority on the ANU server, as BUSCO analyses are relatively intensive on the server)
# -i (input)
# -l (lineage, gene set to be examined, for this analysis, the Eurotiales BUSCO gene set was chosen, meaning all BUSCOs that should appear in all organisms in the Eurotiales order)
# -m (mode genome as inputs were draft genomes)
# -o (desired name for outputs)
# -c (threads to use)



# Firstly, the 10kb8Q assembly from Canu
nice -n 15 ionice -c3 busco -i 10kb8QCanu.fasta -l eurotiales_odb10 -o 10kb8QCanu -m genome -c 6

# Secondly, the 10kb12Q assembly from Canu
nice -n 15 ionice -c3 busco -i 10kb12QCanu.fasta -l eurotiales_odb10 -o 10kb12QCanu -m genome -c 6

# Third, the 10kb8Q assembly from Flye
nice -n 15 ionice -c3 busco -i 10kb8Q_Flye.fasta -l eurotiales_odb10 -o 10kb8QFlye -m genome -c 6

# Finally, the 10kb12Q assembly from Flye
nice -n 15 ionice -c3 busco -i 10kb12Q_Flye.fasta -l eurotiales_odb10 -o 10kb12QFlye -m genome -c 6
