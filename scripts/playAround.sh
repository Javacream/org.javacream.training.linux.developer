#!/bin/bash

# Das ist eine Kommentarzeile

# Komplexe Befehle sind natürlich möglich
find . -name '*.java' -type f -exec wc -l '{}' + | sort -rn | awk '$1>50'

# Variable halten Informationen über einen Alias-Namen

#number = 5 so nicht: keine Leerzeichen!
number=5
message='Hello'

# Zugriff auf Variable erfolt mit $<var_name>

echo $message

# Implizite Shell-Variablen

# $0 ist der Kommando-Name, $1-$x: Aufrufparameter
echo $0 $1

# Abfragen

if [ $number -gt 3 ]; then echo "number is greater than 3"; fi

if [ $number -lt 10 ]; then 
    echo "number is less than 10"; 
fi

# Schleifen

while [ $number -lt 9 ]; do
    ((number++))
    echo $number
done

# Aufruf eines anderen Scripts / eines Kommandos mit Ablage des Ergebnisses in einer Variablen

result=`./helloWorld.sh`
echo $result