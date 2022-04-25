
barchart.png : barchart.py 
	python barchart.py 

table3.csv : MakeTable3.py 
	python MakeTable3.py 

Table_4.csv : Table_4.py 
	python Table_4.py 

all: barchart.png table3.csv Table_4.csv


