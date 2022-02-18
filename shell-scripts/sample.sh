#!/bin/bash

# Ein komplexerer Aufruf 
find . -name '*.java' -type f -exec wc -l '{}' + | sort -rn | awk '$1>50'

# Variablen
C=5
message='Hello'

echo $message #Zugriff auf eine Variable mit $<var>

# Schleifen

while [ $C -lt 10 ]; do
  ((C++))
  echo $C

done

# Abfragen

if [ $C -gt 20 ]; then echo 'C was greater than 20'; fi
if [ $C -gt 5 ]; then 
   echo 'C was greater than 5';
fi

# Expression
# uname liefert elementare Informationen über den Rechner, Hostnamen, ...

echo "this is `uname -s` running on `uname -m`"

uptime

# argument parsing
# $1 
echo $1

# calling another script

result=`./hello.sh`
echo $result