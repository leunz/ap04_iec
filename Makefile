CC = gcc
CFLAGS = -Wall

all: info discentes cc main setup

info:
	@echo "*******************************************"
	@echo "> UNIPAMPA - Universidade Federal do Pampa"
	@echo "> Campus Bagé"
	@echo "> Bagé-RS"
	@echo "> 30/06/2024"
	@echo "*******************************************"
	
discentes:
	@echo "*******************************************"
	@echo "Discentes:"
	@echo "	Adir Leonardo Arruda Brasil"
	@echo "	Guilherme da Silva Barboza"
	@echo "	Pedro Repolho de Jesus"
	@echo "*******************************************"

cc:
	@echo "*******************************************"
	@echo "Componente curricular:"
	@echo "	Introdução à Engenharia de Computação"
	@echo "Docente:"
	@echo "	Fabio Ramos"
	@echo "*******************************************"

main: main.o
	$(CC) $(CFLAGS) -o main main.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c
	
setup:
	@mkdir -p pasta_iec
	@echo "*******************************************" > pasta_iec/info.txt
	@echo "> UNIPAMPA - Universidade Federal do Pampa" >> pasta_iec/info.txt
	@echo "> Campus Bagé" >> pasta_iec/info.txt
	@echo "> Bagé-RS" >> pasta_iec/info.txt
	@echo "> 30/06/2024" >> pasta_iec/info.txt
	@echo "*******************************************" >> pasta_iec/info.txt
	@echo "" >> pasta_iec/info.txt
	@echo "Discentes:" >> pasta_iec/info.txt
	@echo "	Adir Leonardo Arruda Brasil" >> pasta_iec/info.txt
	@echo "	Guilherme da Silva Barboza" >> pasta_iec/info.txt
	@echo "	Pedro Repolho de Jesus" >> pasta_iec/info.txt
	@echo "*******************************************" >> pasta_iec/info.txt
	@echo "" >> pasta_iec/info.txt
	@echo "Componente curricular:" >> pasta_iec/info.txt
	@echo "	Introdução à Engenharia de Computação" >> pasta_iec/info.txt
	@echo "Docente:" >> pasta_iec/info.txt
	@echo "	Fabio Ramos" >> pasta_iec/info.txt
	@echo "*******************************************" >> pasta_iec/info.txt
	@echo "Pasta e arquivo de texto criados com sucesso."

run: main
	./main

clean:
	rm -f *.o main
	rm -rf pasta_iec
