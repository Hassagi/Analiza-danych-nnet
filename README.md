# Analiza-danych-nnet

Projekt nr.2 na zaliczenie Analizy danych
Uniwersytet Gdański - Matematyka

  Spróbuje zbudować model sieci neuronowej przewidującej wynik partii szachowej 
na podstawie punktów Elo określających pozycję poszczególnego gracza w rankingu
(im więcej punków Elo tym lepszy gracz) oraz ilości ruchów wykonanych w partii.
Wynik partii może zakończyć się na 3 sposoby: białe wygrywają, czarne wygrywają 
lub remis. Do zbudowania modelu wykorzystałem sieć złożoną z 12 neuronów. Uczenie
sieci odbyło się na 100 pierwszych partiach. Następnie wykorzystałem model do
przeanalizowania 200 kolejnych partii. Pierwszy błąd to średnia z 10 iteracji 
na pierwszych 100 partiach. Drugi błąd to średnia z 10 iteracji na kolejnych 
200 partiach z wykorzystaniem modelu. Naturalnie pierwszy błąd będzie mniejszy
z uwagi na wykorzystanie tych samych danych.

przykładowy wynik działania programu:

średni_błąd
0.4405
średni_błąd2
0.4965
