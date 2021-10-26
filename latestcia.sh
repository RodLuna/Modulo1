
#!/bin/bash


# arquivo com todas as cias
tail -n +2 2006-sample.csv | cut -d ',' -f9 | sort | uniq > cias.csv # comando uniq deixa que tenha apenas uma vez cada nome

# BUSCANDO NO ARQUIVO ORIGINAL PELOS NOMES DAS CIAS

filename='cias.csv'
while read line;
do
cut -d ',' -f9 2006-sample.csv | grep -w $line | uniq > cia_time.csv
cut -d ',' -f9,16 2006-sample.csv | grep -w $line | cut -d ',' -f2 | sort | grep -v '^$' | grep -v '-' | paste -sd+ | bc >> cia_time.csv
paste -sd ',' cia_time.csv >> result.csv
done < $filename

echo "A cia com a maior soma nos atrasos foi a $(sort -t, -k2 -n result.csv | cut -d ',' -f1 | tail -n1) com um total de $(sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f2) minutos."
Cia que a soma dos atrasos foi a maior.
#sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f1
A soma dos atrasos dessa cia.
#sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f2

rm cias.csv
rm cia_time.csv
rm result.csv


