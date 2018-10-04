#!/bin/bash
chmod -R 755 pyGAsubmit.sh
for graphfilename in *.gpickle; do
	chmod -R 755 $graphfilename;
	for trial in $(seq 5); do python2 pathway_analysis_score_nodes.py $graphfilename $trial & done
	echo $graphfilename
done