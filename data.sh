#!/bin/bash
clear

#capturando o prazo digitado
echo digite o prazo
read PRAZO
clear
echo PRAZO $PRAZO

#capturando a data no sistema e separando dia/mes/ano
#echo DATA $(date)
set $(date)
DIA=$3
MES=$2
ANO=$6

#convertendo a variavel mes de string para number
if [ "$MES" = "Jan" ] ; then
MES=1
elif [ "$MES" = "Feb" ] ; then
MES=2
elif [ "$MES" = "Mar" ] ; then
MES=3
elif [ "$MES" = "Apr" ] ; then
MES=4
elif [ "$MES" = "May" ] ; then
MES=5
elif [ "$MES" = "Jun" ] ; then
MES=6
elif [ "$MES" = "Jul" ] ; then
MES=7
elif [ "$MES" = "Aug" ] ; then
MES=8
elif [ "$MES" = "Sep" ] ; then
MES=9
elif [ "$MES" = "Oct" ] ; then
MES=10
elif [ "$MES" = "Nov" ] ; then
MES=11
else
MES=12
fi

#data atual
echo Data atual $DIA/$MES/$ANO

#processando variavel dia para nova data
FATOR=$((DIA+PRAZO)) 
#echo FATOR $FATOR
RESFATOR=$((FATOR%30))
#echo RESFATOR $RESFATOR
NDIA=$FATOR
if [ "$NDIA" -ge 30 ] ; then 
NDIA=$((RESFATOR+1))
fi

#processando variavel mes para nova data
FATORMES=$((MES*30))
FATORMES=$((FATORMES+DIA+PRAZO))
FATORMES=$((FATORMES/30))
NMES=$FATORMES

#processando variavel ano para nova data
FATORANO=$((FATORMES/12))
RESFATORANO=$((FATORMES%12))
NANO=$((ANO+FATORANO))
NMES=$RESFATORANO

#nova data
echo Nova data $NDIA/$NMES/$NANO

